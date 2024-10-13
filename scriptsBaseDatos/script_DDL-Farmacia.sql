-- DDL BASE DE DATOS DE FARMACIA --

CREATE DATABASE farmacia;
GO

USE farmacia;
GO

-- TABLAS DE DIRECCIONES --
CREATE TABLE departamentos(
    idDepartamento CHAR(2) PRIMARY KEY,
    departamento NVARCHAR(25) NOT NULL,
    pais NVARCHAR(25) NOT NULL
);

CREATE TABLE municipios(
    idMunicipio CHAR(3) PRIMARY KEY,
    municipio NVARCHAR(50) NOT NULL,
    idDepartamento CHAR(2) NOT NULL FOREIGN KEY REFERENCES departamentos(idDepartamento)
);

CREATE TABLE distritos(
    idDistrito CHAR(5) PRIMARY KEY,
    distrito NVARCHAR(50) NOT NULL, 
    idMunicipio CHAR(3) NOT NULL FOREIGN KEY REFERENCES municipios(idMunicipio)
);

CREATE TABLE direcciones(
    idDireccion INT PRIMARY KEY IDENTITY(1,1),
    linea1 NVARCHAR(100) NOT NULL,
    linea2 NVARCHAR(50),
    codigoPostal NVARCHAR(7),
    idDistrito CHAR(5) NOT NULL FOREIGN KEY REFERENCES distritos(idDistrito)
);

-- TABLAS DE COMPRAS --
CREATE TABLE categorias( 
    idCategoria INT PRIMARY KEY IDENTITY(1,1),
    nombreCategoria NVARCHAR(45) NOT NULL,
    descripcionCategoria NVARCHAR(100)
);

CREATE TABLE marcas(
    idMarca INT PRIMARY KEY IDENTITY(1,1),
    nombreMarca NVARCHAR(50) NOT NULL,
    descripcionMarca NVARCHAR(100)
);

CREATE TABLE presentacionMedicamento(    
    idPresentacionMedicamento INT PRIMARY KEY IDENTITY(1,1),
    nombrePresentacion NVARCHAR(45) NOT NULL,
    descripcion NVARCHAR(300)
);

CREATE TABLE inventario(
    idInventario INT PRIMARY KEY IDENTITY(1,1),
    cantidadStock INT NOT NULL,
    noEstanteria INT NOT NULL,
    noPasillo INT NOT NULL
);

CREATE TABLE medicamentos(
    idMedicamento INT PRIMARY KEY IDENTITY(1,1),
    nombreMedicamento NVARCHAR(100) NOT NULL,
    formulaMedicamento NVARCHAR(45) NOT NULL,
    descripcionMedicamento NVARCHAR(300),
    dosisMedicamento NVARCHAR(50),
    fechaVencimiento DATE NOT NULL,
    precioCompra DECIMAL(10,2) NOT NULL,
    precioVenta DECIMAL(10,2) NOT NULL,
    idCategoria INT NOT NULL FOREIGN KEY REFERENCES categorias(idCategoria),
    idMarca INT NOT NULL FOREIGN KEY REFERENCES marcas(idMarca),
    idPresentacionMedicamento INT NOT NULL FOREIGN KEY REFERENCES presentacionMedicamento(idPresentacionMedicamento),
    idInventario INT NOT NULL FOREIGN KEY REFERENCES inventario(idInventario)
);

CREATE TABLE facturaCompra(
    idFacturaCompra INT PRIMARY KEY IDENTITY(1,1),
    fechaHoraFacturacion DATETIME NOT NULL,
    ivaFacturaCompra DECIMAL(10,2) NOT NULL,
    creditoFiscalCompra DECIMAL(10,2) NOT NULL
);

CREATE TABLE laboratorios(
    idLaboratorio INT PRIMARY KEY IDENTITY(1,1),
    nombreLaboratorio NVARCHAR(50) NOT NULL,
    numeroContacto NVARCHAR(15) NOT NULL,
    correoElectronicoLaboratorio NVARCHAR(100),
    idDireccion INT NOT NULL FOREIGN KEY REFERENCES direcciones(idDireccion)
);

CREATE TABLE compras(
    idCompra INT PRIMARY KEY IDENTITY(1,1),
    fechaHoraCompra DATETIME NOT NULL,
    totalCompra DECIMAL(10,2) NOT NULL,
    idLaboratorio INT NOT NULL FOREIGN KEY REFERENCES laboratorios(idLaboratorio)
);

CREATE TABLE detalleCompra(
    idDetalleCompra INT PRIMARY KEY IDENTITY(1,1),
    cantidadComprada INT NOT NULL,
    precioUnitario DECIMAL(10,2) NOT NULL,
    subTotalCompra DECIMAL(10,2) NOT NULL,
    idCompra INT NOT NULL FOREIGN KEY REFERENCES compras(idCompra),
    idMedicamento INT NOT NULL FOREIGN KEY REFERENCES medicamentos(idMedicamento),
    idFacturaCompra INT NOT NULL FOREIGN KEY REFERENCES facturaCompra(idFacturaCompra)
);

-- TABLAS DE VENTAS -- 
CREATE TABLE metodosPago(
    idMetodoPago INT PRIMARY KEY IDENTITY(1,1),
    nombreMetodo NVARCHAR(25) NOT NULL,
    descripcionMetodoPago NVARCHAR(45)
);

CREATE TABLE facturaVenta(
    idFacturaVenta INT PRIMARY KEY IDENTITY(1,1),
    fechaHoraFacturacion DATETIME NOT NULL,
    ivaFacturaVenta DECIMAL(10,2) NOT NULL,
    creditoFiscalVenta DECIMAL(10,2) NOT NULL,
    idMetodoPago INT NOT NULL FOREIGN KEY REFERENCES metodosPago(idMetodoPago)
);

CREATE TABLE clientes(
    idCliente INT PRIMARY KEY IDENTITY(1,1),
    nombresCliente NVARCHAR(100) NOT NULL,
    apellidosCliente NVARCHAR(100) NOT NULL,
    telefonoCliente NVARCHAR(15) NOT NULL,
    generoCliente CHAR(1) NOT NULL,
    duiCliente NVARCHAR(10),
    fechaNacCliente DATE,
    correoCliente NVARCHAR(100),
    idDireccion INT NOT NULL FOREIGN KEY REFERENCES direcciones(idDireccion)
);

-- TABLAS DE EMPLEADOS --
CREATE TABLE sucursales(
    idSucursal INT PRIMARY KEY IDENTITY(1,1),
    nombreSucursal NVARCHAR(45) NOT NULL,
    telefonoSucursal NVARCHAR(15) NOT NULL,
    correoSucursal NVARCHAR(100) NOT NULL,
    horarioApertura TIME,
    horarioCierre TIME,
    idDireccion INT NOT NULL FOREIGN KEY REFERENCES direcciones(idDireccion)
);

CREATE TABLE cargos(
    idCargo INT PRIMARY KEY IDENTITY(1,1),
    cargo NVARCHAR(25) NOT NULL,
    descripcionCargo NVARCHAR(45)
);

CREATE TABLE empleados(
    idEmpleado INT PRIMARY KEY IDENTITY(1,1),
    nombresEmpleado NVARCHAR(100) NOT NULL,
    apellidosEmpleado NVARCHAR(100) NOT NULL,
    duiEmpleado NVARCHAR(10) NOT NULL,
    isssEmpleado NVARCHAR(9),
    fechaNacEmpleado DATE NOT NULL,
    telefonoEmpleado NVARCHAR(15) NOT NULL,
    generoEmpleado CHAR(1) NOT NULL,
    correoEmpleado NVARCHAR(100),
    idCargo INT NOT NULL FOREIGN KEY REFERENCES cargos(idCargo),
    idDireccion INT NOT NULL FOREIGN KEY REFERENCES direcciones(idDireccion),
    idSucursal INT NOT NULL FOREIGN KEY REFERENCES sucursales(idSucursal)
);

CREATE TABLE ventas(
    idVenta INT PRIMARY KEY IDENTITY(1,1),
    fechaHoraVenta DATETIME NOT NULL,
    totalVenta DECIMAL(10,2) NOT NULL,
    idCliente INT NOT NULL FOREIGN KEY REFERENCES clientes(idCliente),
    idEmpleado INT NOT NULL FOREIGN KEY REFERENCES empleados(idEmpleado)
);

CREATE TABLE detalleVenta(
    idDetalleVenta INT PRIMARY KEY IDENTITY(1,1),
    cantidadVendida INT NOT NULL,
    precioUnitario DECIMAL(10,2) NOT NULL,
    subTotalVenta DECIMAL(10,2) NOT NULL,
    idVenta INT NOT NULL FOREIGN KEY REFERENCES ventas(idVenta),
    idMedicamento INT NOT NULL FOREIGN KEY REFERENCES medicamentos(idMedicamento),
    idFacturaVenta INT NOT NULL FOREIGN KEY REFERENCES facturaVenta(idFacturaVenta)
);

-- TABLAS DE ROLES --
CREATE TABLE roles(
	idRol INT PRIMARY KEY IDENTITY(1,1),
	rol NVARCHAR(50) NOT NULL
);

CREATE TABLE opciones(
	idOpcion INT PRIMARY KEY IDENTITY(1,1),
    opcion NVARCHAR(50) NOT NULL
);

CREATE TABLE asignacionRolesOpciones(
	idAsignacion INT PRIMARY KEY IDENTITY(1,1),
    idRol INT NOT NULL FOREIGN KEY REFERENCES roles(idRol),
    idOpcion INT NOT NULL FOREIGN KEY REFERENCES opciones(idOpcion)
);

CREATE TABLE usuarios(
	idUsuario INT PRIMARY KEY IDENTITY(1,1),
    usuario NVARCHAR(50) NOT NULL,
    contrasenia NVARCHAR(50) NOT NULL,
    idRol INT NOT NULL FOREIGN KEY REFERENCES roles(idRol),
    idEmpleado INT NOT NULL FOREIGN KEY REFERENCES empleados(idEmpleado)
);
GO
-- MOSTRAR TODAS LAS TABLAS DE LA BD --
SELECT
  *
FROM
  INFORMATION_SCHEMA.TABLES;
GO

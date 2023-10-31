# AWS_EC2_to_S3
 Creamos diferentes scripts, políticas y roles  para poder conseguir una arquitectura básica que pueda subir algún tipo de archivo desde una  instancia EC2 hasta un contenedor S3.

# Pasos que he realizado:


1. **Configuración de una instancia EC2:** Inicié una instancia EC2 utilizando tanto el SDK de Python como la CLI. Fue crucial para mí asegurarme de que esta instancia cumpliese con los criterios del free tier para evitar cargos adicionales. Por cierto, recuerdo haber revisado una guía de la Universidad Alfonso X el Sabio que detallaba un proceso similar. 

2. **Creación de un contenedor S3:** Usando de nuevo el SDK de Python y la CLI, creé un contenedor S3. Tuve especial cuidado en configurar los parámetros adecuados para poder cargar contenido en el S3 sin comprometer la seguridad, evitando el acceso público. También fue importante para mí no superar los límites del free tier. Durante este proceso, boto3 y las instrucciones de CLI resultaron ser recursos valiosos.

3. **Definición de Roles y Políticas:** Establecí un rol denominado `WriteS3ObjectRole` y una política llamada `WriteS3ObjectPolicy`. Estos elementos fueron esenciales para permitir la subida de archivos al S3 desde mi instancia EC2. Guardé los archivos de configuración JSON por si los necesitaba más adelante. Revisé algunos ejemplos y documentación oficial para entender mejor este proceso.

4. **Desarrollo de un código en Python:** Escribí un script en Python utilizando el SDK para subir archivos al S3. Una vez que tuve un archivo listo y probado, lo alojé en un repositorio git para que pudiera acceder fácilmente a él desde mi instancia EC2. Utilicé boto3 para facilitar la subida de estos archivos.

5. **Asignación de Roles a la instancia EC2:** Mediante un comando CLI, adjudiqué el rol `WriteS3ObjectRole` que había creado anteriormente a mi instancia EC2. Durante este proceso, consulté una guía oficial que me proporcionó una clara comprensión de cómo usar el comando de la CLI.

6. **Limpieza de los recursos:** Finalmente, después de completar todas las tareas, me pareció prudente limpiar todos los servicios que había levantado. Para ello, escribí un script que eliminara tanto la instancia EC2 como el contenedor S3. boto3 y las instrucciones de CLI, nuevamente, fueron mis aliados en esta tarea.

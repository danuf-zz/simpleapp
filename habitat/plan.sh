pkg_name=ptr_service
pkg_origin=mfol
pkg_version="0.1.0"
pkg_filename="price-type-rules-service-1.0-SNAPSHOT.jar"
pkg_deps=(core/jre8 core/maven)
pkg_exports=(
  [port]=server.port
)
pkg_exposes=(port)

do_build() {
  mvn clean install -DskipTests=true
}

do_install() {
  local app_path="$pkg_prefix/app"
  mkdir -p $app_path
  cp -R "/src/target/$pkg_filename" $app_path/
}

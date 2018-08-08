pkg_name=simple-jar
pkg_origin=danuf
pkg_version="0.0.1"
pkg_deps=(core/jre8 core/maven)

do_build() {
  mvn clean install -DskipTests=true
}

do_install() {
  local app_path="$pkg_prefix/app"
  mkdir -p $app_path
  cp -R /src/target/rd-1.0-SNAPSHOT.jar $app_path/
}

component {

    setSettings()
    loadDatasources()
    loadMappings()

    private void function setSettings() {
        this.name = "lucee_and_postgres"
    }

    private void function loadDataSources() {
        this.datasources[this.name] = {
            type = "postgresql",
            host = "database.backend",
            port = 5432,
            database = this.name,
            username = this.name,
            password = server.system.environment.POSTGRES_PASSWORD,
            custom = {
                useUnicode = true,
                characterEncoding = "UTF-8"
            }
        }

        this.datasource = this.name
    }

    private void function loadMappings() {
    }
}

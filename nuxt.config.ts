// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
    app: {
        head: {
            charset: 'utf-16',
            viewport: 'width=500, initial-scale=1',
            title: 'Heko',
            meta: [
                // <meta name="description" content="My amazing site">
                { name: 'description', content: 'My amazing website.' }
            ],
        }
    },
    vite: {
        css: {
            preprocessorOptions: {
                scss: {
                    additionalData: '@use "@/assets/styles/_var.scss" as *;'
                }
            }
        }
    },
    devServer: {
        port: 3000,
        host: 'localhost'
    }
})

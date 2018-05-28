package usertrackingsystem

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:'user', action:'login')
        "/index"(controller: 'user', action: 'home')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}

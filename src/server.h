#include <cstdint>
#include <functional>

#include "route.h"
#include "request.h"
#include "response.h"

namespace polar {
    class Server {
        std::vector<Route> routes;

        Server(uint16_t port);

        get(const char* path, std::functional<void (Request, Response)> callback);
    };
}

This is an example of not working Websockets when a Socket.io application is deployed to an Azure App Service in a docker container.

The 'perMessageDeflate' Socket.IO server setting is set to false, as recommended by Microsoft https://docs.microsoft.com/en-us/azure/app-service/containers/app-service-linux-faq.

The 'transports' setting is set to use only the 'websocket' transport to avoid fallback to polling.
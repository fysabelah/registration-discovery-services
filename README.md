# Sistema de Gerenciamento de Pedidos - Desafio Tech Challenge - Módulo 4

## Registro e descoberta de serviços

Repositório responsável pelo registro e identificação dos serviços.

Há 4 serviços:

* [Cliente](https://github.com/AydanAmorim/costumers-microservice)
* [Pedido](https://github.com/fysabelah/ordering-microservice)
* [Produto](https://github.com/DFaccio/products-microservice)
* [Logística](https://github.com/erickmatheusribeiro/tracking-microservice)

### Como configurar
Na aplicação que deseja registrar, realize os passos indicados abaixo.

1. Adicione a dependência abaixo.
    
        <dependency>
            <groupId>org.springframework.cloud</groupId>
            <artifactId>spring-cloud-starter-netflix-eureka-client</artifactId>
        </dependency>

2. Na classe main, adicione a anotação _@EnableDiscoveryClient_.
3. No arquivo application.properties adicione a propriedade abaixo. 

       server.port=0
4. Adicione a propriedade *eureka.client.serviceUrl.defaultZone* conforme valor abaixo.
   * Caso não esteja em container, o endereço será: http://localhost:7070/eureka
   * Caso em container, o endereço será: http://server-discovery:7070/eureka

Verifique se tudo deu certo acessando o endereço do servidor e verificando se em **Instances currently registered with Eureka** 
é apresentado a mesma string que está na propriedade _spring.application.name_.

      Configure a propriedade spring.application.name caso ela não exista. 

### Como executar

Pode ser executado via container ou localhost.

Caso container, basta executar 

    docker compose up

Caso localhost, basta executar na IDE de sua preferência.


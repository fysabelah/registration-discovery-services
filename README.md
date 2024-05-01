# Sistema de Gerenciamento de Pedidos - Desafio Tech Challenge - Módulo 4

## Registro e descoberta de serviços

Repositório responsável pelo registro e identificação dos serviços.

Há 4 serviços:

* [Cliente](https://github.com/AydanAmorim/costumers-microservice)
* [Pedido](https://github.com/fysabelah/ordering-microservice)
* Produto
* [Logística](https://github.com/erickmatheusribeiro/tracking-microservice)
* [Gateway](https://github.com/fysabelah/gateway-order-management?tab=readme-ov-file)

### Como configurar
Na aplicação que deseja registrar, realize os passos indicados abaixo.

    Configure a propriedade spring.application.name caso ela não exista.

1. Adicione a dependência abaixo.
    
        <dependency>
            <groupId>org.springframework.cloud</groupId>
            <artifactId>spring-cloud-starter-netflix-eureka-client</artifactId>
        </dependency>
   
3. Na classe main, adicione a anotação _@EnableDiscoveryClient_.
4. No arquivo application.properties copie e cole as duas propriedades abaixo. 

       server.port=0
       eureka.instance.instance-id=${spring.application.name}:${random.int}
5. Adicione a propriedade *eureka.client.serviceUrl.defaultZone* conforme valor abaixo.
   * Caso sua apliação não esteja em container, o endereço será: http://localhost:7070/eureka
   * Caso em container, o endereço será: http://server-discovery:7070/eureka

Verifique se tudo deu certo acessando o endereço do servidor e verificando se em **Instances currently registered with Eureka** 
é apresentado a mesma string que está na propriedade _spring.application.name_.

### Como executar

Pode ser executado via container ou localhost.

Caso container, basta executar 

    docker compose up

Caso localhost, basta executar na IDE de sua preferência.


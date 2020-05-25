//
//  ViewController.swift
//  gggg
//
//  Created by Alberto Palomar Robledo on 13/05/2020.
//  Copyright © 2020 Alberto Palomar Robledo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //testFactoryMethod()
        //testAbstractFactory()
        //testBuilder()
        //testPrototipe()
        //testSinglenton()
        //testChainOfResponsibility()
        //testCommand()
        //testInterpreter()
        //testIteractor()
        //testMediator()
        //testMemento()
        //testObserver()
        //testState()
        //testStrategy()
        //testTemaplateMethod()
        //testVisitor()
        //testAdapter()
        //testBridge()
        //testComposite()
        //testDecorator()
        //testFacade()
        //testFlyweight()
        testProxy()
        
    }
    
    func testProxy(){
        let internet = ProxyInternet()
        //internet.connectTo(url: "udemy.com")
        internet.connectTo(url: "facebook.com")
    }
    
    func testFlyweight(){
        let enemyFactory = EnemyFactory()
        for _ in 0...5 {
            let enemy = enemyFactory.getEnemy(type: getRandomEnemyType())
            enemy.setWeapon(weapon: getRandomWeapon())
            enemy.lifePoints()
        }
    }
    
    let enemyType = ["Private", "Detective"]
    let weapon = ["Fusil", "Revolver", "Pistola"]
    func getRandomEnemyType()->String{
        let number = Int.random(in: 0 ..< (enemyType.count))
        return enemyType[number]
    }
    func getRandomWeapon()->String{
        let number = Int.random(in: 0 ..< (weapon.count))
        return weapon[number]
    }
    
    func testFacade(){
        let facade = CreditMarker()
        facade.showCreditBlack()
        facade.showCreditGold()
        facade.showCreditSilver()
        
    }
    
    func testDecorator(){
        
        let blackInternationalPayment = InternationalPaymentDecorator(decorated: BlackCreditComponent())
        print("----Tarjeta Black configurada------")
        blackInternationalPayment.showCredit()
        
        let goldSecurePayment = SecureDecorator(decorated: GoldCreditComponent())
        print("----Tarjeta Black configurada------")
        goldSecurePayment.showCredit()
        
    }
    
    func testComposite(){
        var saving = SavingsAccount()
        var current = CurrentAccount()
        var composite = AccountComposite()
        
        composite.addAccount(account: saving)
        composite.addAccount(account: current)
        
        composite.showCardName()
    }
    
    func testBridge(){
        var classic = ClassicCreditCard(creditCard: UnsecureCreditCard())
        
        classic.makePayment()
        
        classic = ClassicCreditCard(creditCard: SecureCreditCard())
        
        classic.makePayment()
    }
    
    func testAdapter(){
        let adaptee = OperationAdaptee(a: 3,b: 4)
        if(adaptee.sum()  == 7){
            print("SI")
        }else{
           print("NO")
        }
        
        
        
        let target = OperationAdapter(adaptee: adaptee)
        if(target.getSum == "7"){
            print("SI")
        }
        print(target.getSum)
        
    }
    
    func testVisitor(){
        let ofertaVisitable = GassolineOffer()
        ofertaVisitable.accept(visitor: BlackCreditCardVisitor())
    }
    
    func testTemaplateMethod(){
        let paymentMethodVisa = Visa()
        paymentMethodVisa.makePayment()
        
        let paymentMethodPaypal = Paypal()
        paymentMethodPaypal.makePayment()
    }
    
    func testStrategy(){
        let context =  Context(strategyTextFormmater: CapitalStrategyTextFormatter())
        context.publishText(text: "este texto sera convertido a Mayusculas a través de nuestro algoritmo")
        
        let contextLower =  Context(strategyTextFormmater: LowerStrategyTestFormatter())
        contextLower.publishText(text: "ESTE TEXTO SERA CONVERTIDO A minuscula a TRAVES DE NUESTRO ALGORITMO")
    }
    
    func testState(){
        let context = MobileAlertStateContext()
        context.alert()
        context.alert()
        sleep(2)
        context.setState(state: Vibration())
        context.alert()
        context.alert()
        context.setState(state: Silent())
        context.alert()
        context.alert()
    }
    
    func testObserver(){
        let car = Car()
        let pedestrian = Pedestrian()
        var trafficLight = TrafficLight(status: "CAR_GREEN")
        let messagePublisher = MessagePublisher()
        messagePublisher.attch(o: car)
        messagePublisher.attch(o: pedestrian)
        
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
        sleep(2)
        //Thread.sleep(2000)
        trafficLight.status = "CAR_RED"
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
    }
    
    func testMemento(){
        let carataker = Carataker()
        var article = Article(id: 1, title: "Memento", text: "Memento es una pelicula")
        print(article.text)
        
        //Hacemos memento en dicho estado
        carataker.addMemento(memento: article.createMemento())
        
        article.text = "Memento es una pelicula de nola protagonizada por Guy Pearce"
        print(article.text)
        
        //Hacemos memento en dicho estado
        carataker.addMemento(memento: article.createMemento())
        
        let memento1: ArticleMemento = carataker.getMemento(index: 0)
        let memento2: ArticleMemento = carataker.getMemento(index: 1)
        
        article.restore(memento: memento1)
        print(article.text)
        
        article.restore(memento: memento2)
        print(article.text)
    }
    
    func testMediator(){
        let meditator = ConcreteMediator()
        let concreteColleague1 = ConcreteCollegue1(m: meditator)
        let concreteColleague2 = ConcreteCollegue2(m: meditator)
        
        meditator.setColleague1(colleague1: concreteColleague1)
        meditator.setColleague2(colleague2: concreteColleague2)
        
        concreteColleague1.send(message: "Hola como estas")
        concreteColleague2.send(message: "Muy bien")
        
    }
    
    func testIteractor(){
        
        let misTarjetas = CreditCardsCollection()
        //let creditCard = CreditCard(type: "Gold")
        //let creditCard2 = CreditCard(type: "Black")
        
        misTarjetas.append(CreditCard(type: "Gold"))
        for card in misTarjetas{
            print(card.type)
        }
        
    
    }
    
    func testInterpreter(){
        let cero = TerminalExpression(text: "0")
        let uno = TerminalExpression(text: "1")
        
        let containsOneOrCero = OrExpression(expression1: cero, expression2: uno)
        let containsOneAndCero = AndExpression(expression1: cero, expression2: uno)
        
        print(containsOneOrCero.interpret(context: "cero"))
        print(containsOneOrCero.interpret(context: "0"))
        
        print(containsOneAndCero.interpret(context: "cero, 0"))
        print(containsOneAndCero.interpret(context: "0, 1"))
    }
    
    func testCommand(){
        let creditCard1 = CreditCardReceiver()
        let creditCard2 = CreditCardReceiver()
        
        let invoker = CreditCardInvoker()
        invoker.setCommand(command: CreditCardActivateCommand(creditCardReceiver: creditCard1))
        invoker.run()
        
        invoker.setCommand(command: CreditCardActivateCommand(creditCardReceiver: creditCard2))
        invoker.run()
    }
    
    func testChainOfResponsibility(){
        let bank = BankHandler()
        bank.creditCardRequest(totalLoan: 30000)
    }
    
    func testSinglenton(){
        let instancia1 = CardSinglenton.shared
        let instancia2 = CardSinglenton.shared
        
        if(instancia1 === instancia2){
            print("La instancia1 es la misma que la 2")
        }
        instancia2.doSomething()
    }
    
    func testPrototipe(){
        let original = VisaCard(cardNumber: 1, cardType: "Credit")
        guard let copy = original.copy() as? VisaCard else {
            return
        }
        print(copy.cardName)
        print(original.cardName)
        
        print(copy.cardNumber)
        print(original.cardNumber)
        
    }
   /*
    func testBuilder(){
        var card: Card = Card.CardBuilder()
            .cardType(cardType: "VISA")
            .number(number: "1111 2222 3333 4444")
            .expires(expires: 2030)
            .build()
        card.showCard()
    }
 */
    
    func testAbstractFactory(){
        PaymentMethodClient.codigoCliente(factory: PaymentInAdvanceCardFactory())
        
        PaymentMethodClient.codigoCliente(factory: MontlyGoogleFactory())
    }
    
    /*
     Patron creacional
     El objetivo del Factory Method es librarnos a los desarrolladores de la tarea de la creación de objetos de la forma correcta.
     Es decir que define el protocolo de creación de un tipo de objeto, y permite a las subsclases del mimso
     decidir que tipo de instancia concreta necesitan.
     Es decir que este patrón se usa para solucionar el problema que nos encontramos cuando tenemos que
     crear la instancia de un objeto que a priori no sabemos aún que tipo de objeto ha de ser. Es decir
     en una aplicaicón real podría ser debido a que el usuario en la aplicación seleccione una opción u otra

     porque depende de la configuración que se hace en tiempo de despliegue de la aplicación.
     */
    
    func testFactoryMethod()  {
        /*
        Digamos que aunque aqui ponemos el tipo de pago directamente, pero aqui
        seria dejar seleccionar al usuario que quiere pagar con googlepay
         */
        var payment: Payment
        payment = PaymentFactory.buildPayment(typePayment: .GOOGLE)
        payment.doPayment()
    }


}


pragma solidity ^0.4.21;

//Ejemplo SmartContract para poder almacenar un mensaje y devolverselo al usuario que lo necesite.
contract MessageStore {
    
    //variable privada que define quien es el propietario del contrato. (address es tipo dirección)
    address private owner;
    string private message;
    
    //constructor
    constructor() public {
        owner = msg.sender;
    }
    
    function setMessage(string newMessage) public {
        message = newMessage;
    }
    
    //view --> ()nodificador para indicar al compilador que esto es solo para visualización, no requiere minar un bloque.
    function getMessage() public view returns (string){
        return message;
    }
}
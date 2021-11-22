//NOTE DOES NOT WORK PROPERLY


pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract YourCollectible is ERC721URIStorage {
    
    string NAME = "Kangbad";
    string SYMBOL = "KB";
    uint256 _number = 0;
    uint256 private _tokenId = 1;
    address addressname;
    address[] listofaddress;
    
    // this marks an item as available for minting
    mapping (string => bool) public notMinted;

    constructor(string memory assetForSale) public ERC721(NAME, SYMBOL) {
        notMinted[assetForSale] = true;
    }
    
    function setNumber(uint256 newNum) public{
        _number = newNum;
    }
    
    function retrieve() public view returns (uint256){
        return _number;
    }
    
    // function addressBook(){
    //     for (uint i=0; i < listofaddress.length ; i++) {
    //         listofaddress[i] = addressname;
    //     }
    // }
    
    
    function setname(address[] memory newName) public{
        listofaddress = newName;
    }
    
    function getname() public view returns (address){
        return listofaddress[2];
    }

    function mintItem(string memory tokenURI) public{
        // only "notMinted" items are up for mintin
        for (uint i=0; i<128; i++){
            _safemint(msg.sender, i);
            _setTokenURI(i, tokenURI);
        }
        

        // set tokenURI for plugging in our metadata to NFT
        // _setTokenURI(_tokenId, tokenURI);
        
        

       /* return _tokenId;*/
    }
    
    function massSend(string memory tokenURI) public{
        for(uint i=0; i< listofaddress.length;i++){
            addressname = listofaddress[i];
            mintItem(tokenURI);
        }
    }
}

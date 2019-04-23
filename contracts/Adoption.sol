pragma solidity ^0.5.0;


contract Adoption 
{

  address[16] public adopters;  // ���������ߵĵ�ַ
  uint[16] public volume = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

  
  mapping (address => uint) adoptersCount;

    // �������
   function adopt(uint petId) public returns (uint) 
   {
    require(petId >= 0 && petId <= 15 && adoptersCount[msg.sender]<5);  // ȷ��id�����鳤����
    
    
    adopters[petId] = msg.sender;        // ����������ַ
    adoptersCount[msg.sender]++;
    volume[petId]++; 
    
    return petId;
   }
   
 function fight(uint petId) public returns (uint)
   {
    require(petId >= 0 && petId <= 15);  //
    adopters[petId] = msg.sender;
    return petId;
   }
  // ����������
  function getAdopters() public view returns (address[16]memory) 
  {
    return adopters;
  }
  function getVolume() public view returns (uint[16]memory)
  {
    return volume;
  }
  function whatIsnumber() public view returns (uint){
      return adoptersCount[msg.sender];
  }
  
}
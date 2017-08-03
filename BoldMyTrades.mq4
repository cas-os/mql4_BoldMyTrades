//+------------------------------------------------------------------+
//|                                                 BoldMyTrades.mq4 |
//|                                      Kazimierz.Osinski@gmail.com |
//|                                                mql4dev@gmail.com |
//+------------------------------------------------------------------+
#property copyright "Kazimierz.Osinski@gmail.com"
#property link      ""
#property version   "1.00"
#property strict
#property script_show_inputs
//--- input parameters
input int      Bold=3;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   int i=0;
   int objTotal = ObjectsTotal();
   string name;
     
   for(i=0;i<objTotal;i++)   
      {
      name=ObjectName(i);
      if(ObjectType(name)==OBJ_TREND)
         {
         PrintFormat("Obiekt %d o nazwie :: %s - pogrubiony", i, name);
         ObjectSetInteger(NULL, name, OBJPROP_WIDTH, Bold);
         }
      }
  }
//+------------------------------------------------------------------+

with GNATCOM.IInterface;

with GNATCOM.Errors;

package body ADO.uCommand15_Interface is

   procedure Initialize (This : in out uCommand15_Type) is
   begin
      Set_IID (This, IID_uCommand15);
   end Initialize;

   function Pointer (This : uCommand15_Type)
     return Pointer_To_uCommand15
   is
   begin
      return To_Pointer_To_uCommand15 (Address (This));
   end Pointer;

   procedure Attach (This    : in out uCommand15_Type;
                     Pointer : in     Pointer_To_uCommand15)
   is
   begin
      Attach (This, GNATCOM.IInterface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Properties
     (This      : uCommand15_Type)
     return Pointer_To_Properties
   is
       RetVal : aliased Pointer_To_Properties;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Properties
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Properties;

   function Get_ActiveConnection
     (This      : uCommand15_Type)
     return Pointer_To_uConnection
   is
       RetVal : aliased Pointer_To_uConnection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveConnection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveConnection;

   procedure PutRef_ActiveConnection
     (This      : uCommand15_Type;
      ppvObject : Pointer_To_uConnection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PutRef_ActiveConnection
         (Pointer (This),
          ppvObject));

   end PutRef_ActiveConnection;

   procedure Put_ActiveConnection
     (This      : uCommand15_Type;
      ppvObject : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ActiveConnection
         (Pointer (This),
          ppvObject));

      if Free then
               GNATCOM.IInterface.Free (ppvObject);
      
      end if;

   end Put_ActiveConnection;

   function Get_CommandText
     (This  : uCommand15_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CommandText;

   procedure Put_CommandText
     (This  : uCommand15_Type;
      pbstr : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CommandText
         (Pointer (This),
          pbstr));

      if Free then
               GNATCOM.IInterface.Free (pbstr);
      
      end if;

   end Put_CommandText;

   function Get_CommandTimeout
     (This : uCommand15_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandTimeout
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CommandTimeout;

   procedure Put_CommandTimeout
     (This : uCommand15_Type;
      pl   : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CommandTimeout
         (Pointer (This),
          pl));

   end Put_CommandTimeout;

   function Get_Prepared
     (This       : uCommand15_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Prepared
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Prepared;

   procedure Put_Prepared
     (This       : uCommand15_Type;
      pfPrepared : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Prepared
         (Pointer (This),
          pfPrepared));

   end Put_Prepared;

   function Execute
     (This            : uCommand15_Type;
      RecordsAffected : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Parameters      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Options         : Interfaces.C.long)
     return Pointer_To_uRecordset
   is
       RetVal : aliased Pointer_To_uRecordset;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Execute
         (Pointer (This),
          RecordsAffected,
          Parameters,
          Options,
          RetVal'Unchecked_Access));

      return RetVal;
   end Execute;

   function CreateParameter
     (This      : uCommand15_Type;
      Name      : GNATCOM.Types.BSTR;
      uType     : DataTypeEnum;
      Direction : ParameterDirectionEnum;
      Size      : Interfaces.C.long;
      Value     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return Pointer_To_uParameter
   is
       RetVal : aliased Pointer_To_uParameter;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateParameter
         (Pointer (This),
          Name,
          uType,
          Direction,
          Size,
          Value,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.IInterface.Free (Name);
               GNATCOM.IInterface.Free (Value);
      
      end if;

      return RetVal;
   end CreateParameter;

   function Get_Parameters
     (This      : uCommand15_Type)
     return Pointer_To_Parameters
   is
       RetVal : aliased Pointer_To_Parameters;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parameters
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parameters;

   procedure Put_CommandType
     (This      : uCommand15_Type;
      plCmdType : CommandTypeEnum)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CommandType
         (Pointer (This),
          plCmdType));

   end Put_CommandType;

   function Get_CommandType
     (This      : uCommand15_Type)
     return CommandTypeEnum
   is
       RetVal : aliased CommandTypeEnum;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CommandType;

   function Get_Name
     (This      : uCommand15_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   procedure Put_Name
     (This      : uCommand15_Type;
      pbstrName : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Name
         (Pointer (This),
          pbstrName));

      if Free then
               GNATCOM.IInterface.Free (pbstrName);
      
      end if;

   end Put_Name;

end ADO.uCommand15_Interface;


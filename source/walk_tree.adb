--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with DIANA;
with DIANAMAN;

package body Walk_Tree is

   ----------------------
   -- Traverse_Element --
   ----------------------

   procedure Traverse_Element
     (Element : USERPK.TREE;
      Data    : in out State_Information;
      State   : in out Traverse_Control)
   is
      use DIANA, USERPK;
      List : USERPK.SEQ_TYPE;
      Item : USERPK.TREE;
   begin
      if State = Terminate_Immediately
        or else Element.TPG <= 0
        or else Element.TLN = 0
        or else DIANA.KIND (Element) not in CLASS_ALL_SOURCE
      then
         return;
      end if;

      Pre_Operation (Element, Data, State);

      if State = Terminate_Immediately then
         return;

      elsif State = Abandon_Children then
         State := Continue;

      elsif State = Abandon_Siblings then
         null;

      elsif DIANAMAN.ARITY (Element) = USERPK.ARBITRARY then
         List := DIANAMAN.LIST (Element);

         while not DIANAMAN.IS_EMPTY (List) loop
            DIANAMAN.POP (List, Item);
            Traverse_Element (Item, Data, State);

            if State = Terminate_Immediately then
               return;
            elsif State in Abandon_Children .. Abandon_Siblings then
               State := Continue;
               exit;
            end if;
         end loop;

      else
         for J in 1 .. ARITIES'POS(DIANAMAN.ARITY (Element)) loop
            Traverse_Element (DIANAMAN.DABS(J,Element), Data, State);

            if State = Terminate_Immediately then
               return;
            elsif State in Abandon_Children .. Abandon_Siblings then
               State := Continue;
               exit;
            end if;
         end loop;
      end if;

      Post_Operation (Element, Data, State);
   end Traverse_Element;

   procedure Pre_Traverse_With_Context
     (Element : USERPK.TREE;
      Context : in out Contexts.Context;
      Data    : in out State_Information)
   is

      State : Traverse_Control := Continue;

      procedure Traverse
        (Element : USERPK.TREE;
         Context : in out Contexts.Context;
         Data    : in out State_Information;
         State   : in out Traverse_Control)
      is
         use DIANA, USERPK;
         List : USERPK.SEQ_TYPE;
         Item : USERPK.TREE;
      begin
         if State = Terminate_Immediately
           or else Element.TPG <= 0
           or else Element.TLN = 0
           or else DIANA.KIND (Element) not in CLASS_ALL_SOURCE
         then
            return;
         end if;

         Pre_Operation (Element, Context, Data, State);

         if State = Terminate_Immediately then
            return;

         elsif State = Abandon_Children then
            null;

         elsif State = Abandon_Siblings then
            return;

         elsif DIANAMAN.ARITY (Element) = USERPK.ARBITRARY then
            List := DIANAMAN.LIST (Element);

            while not DIANAMAN.IS_EMPTY (List) loop
               DIANAMAN.POP (List, Item);
               Traverse (Item, Context, Data, State);

               if State = Terminate_Immediately then
                  return;
               elsif State in Abandon_Children .. Abandon_Siblings then
                  exit;
               end if;
            end loop;

         else
            for J in 1 .. ARITIES'POS(DIANAMAN.ARITY (Element)) loop
               Traverse
                 (DIANAMAN.DABS(J,Element), Context, Data, State);

               if State = Terminate_Immediately then
                  return;
               elsif State in Abandon_Children .. Abandon_Siblings then
                  exit;
               end if;
            end loop;
         end if;

         State := Continue;
      end Traverse;

   begin
      Traverse (Element, Context, Data, State);
   end Pre_Traverse_With_Context;

   ----------------------------------
   -- Pre_Traverse_With_Context_RO --
   ----------------------------------

   procedure Pre_Traverse_With_Context_RO
     (Element : USERPK.TREE;
      Context : in out Contexts.Context;
      Data    : State_Information)
   is

      State : Traverse_Control := Continue;

      procedure Traverse
        (Element : USERPK.TREE;
         Context : in out Contexts.Context;
         Data    : State_Information;
         State   : in out Traverse_Control)
      is
         use DIANA, USERPK;
         List : USERPK.SEQ_TYPE;
         Item : USERPK.TREE;
      begin
         if State = Terminate_Immediately
           or else Element.TPG <= 0
           or else Element.TLN = 0
           or else DIANA.KIND (Element) not in CLASS_ALL_SOURCE
         then
            return;
         end if;

         Pre_Operation (Element, Context, Data, State);

         if State = Terminate_Immediately then
            return;

         elsif State = Abandon_Children then
            null;

         elsif State = Abandon_Siblings then
            return;

         elsif DIANAMAN.ARITY (Element) = USERPK.ARBITRARY then
            List := DIANAMAN.LIST (Element);

            while not DIANAMAN.IS_EMPTY (List) loop
               DIANAMAN.POP (List, Item);
               Traverse (Item, Context, Data, State);

               if State = Terminate_Immediately then
                  return;
               elsif State in Abandon_Children .. Abandon_Siblings then
                  exit;
               end if;
            end loop;

         else
            for J in 1 .. ARITIES'POS(DIANAMAN.ARITY (Element)) loop
               Traverse
                 (DIANAMAN.DABS(J,Element), Context, Data, State);

               if State = Terminate_Immediately then
                  return;
               elsif State in Abandon_Children .. Abandon_Siblings then
                  exit;
               end if;
            end loop;
         end if;

         State := Continue;
      end Traverse;

   begin
      Traverse (Element, Context, Data, State);
   end Pre_Traverse_With_Context_RO;

end Walk_Tree;

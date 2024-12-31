--  SPDX-FileCopyrightText: 2024 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
----------------------------------------------------------------

with Contexts;
with USERPK;

package Walk_Tree is

   type Traverse_Control is
     (Continue,               -- Continues the normal depth-first traversal.

      Abandon_Children,       -- Prevents traversal of the current element's
                              -- children.

      Abandon_Siblings,       -- Prevents traversal of the current element's
                              -- children and remaining siblings.

      Terminate_Immediately); -- Does exactly that.

   generic

      type State_Information is limited private;

      with procedure Pre_Operation
        (Element : USERPK.TREE;
         Data    : in out State_Information;
         State   : in out Traverse_Control);

      with procedure Post_Operation
        (Element : USERPK.TREE;
         Data    : in out State_Information;
         State   : in out Traverse_Control);

   procedure Traverse_Element
     (Element : USERPK.TREE;
      Data    : in out State_Information;
      State   : in out Traverse_Control);

   generic

      type State_Information is limited private;

      with procedure Pre_Operation
        (Element : USERPK.TREE;
         Context : in out Contexts.Context;
         Data    : in out State_Information;
         State   : in out Traverse_Control);

   procedure Pre_Traverse_With_Context
     (Element : USERPK.TREE;
      Context : in out Contexts.Context;
      Data    : in out State_Information);

   generic

      type State_Information is limited private;

      with procedure Pre_Operation
        (Element : USERPK.TREE;
         Context : in out Contexts.Context;
         Data    : State_Information;
         State   : in out Traverse_Control);

   procedure Pre_Traverse_With_Context_RO
     (Element : USERPK.TREE;
      Context : in out Contexts.Context;
      Data    : State_Information);

end Walk_Tree;

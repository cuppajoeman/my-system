Vim�UnDo� �
\�@nѫ�	W
x�o��y✓B�ԯ<�>�  �                                   `�#    _�                      q        ����                                                                                                                                                                                                                                                                                                                                      q           V       `�"    �   p   q       �       class TableAnimation(Scene):       def construct(self):       @        print(self.camera.frame_width, self.camera.frame_height)               # TABLE CONSTRUCTION       1        def generate_repeat_symbol_with_spaces():               return r"\%"       <        repeat_symbol = generate_repeat_symbol_with_spaces()               class TableContext:   :            def __init__(self, table, width=12, height=6):   *                # assuming non-empty table   "                self.table = table   *                self.num_rows = len(table)   -                self.num_cols = len(table[0])       $                self.x_padding = 0.5   $                self.y_padding = 0.2       7                self.cell_width = width / self.num_cols   9                self.cell_height = height / self.num_rows       8                print(self.cell_width, self.cell_height)       O                self.content_width = width / self.num_cols - 2 * self.x_padding   Q                self.content_height = height / self.num_rows - 2 * self.y_padding       <        def apply_cell_sizing(t_ctx, cell, half_size=False):       (            if cell.width > cell.height:   V                cell.scale_to_fit_width(t_ctx.content_width / (2 if half_size else 1))   +            elif cell.height >= cell.width:   >                cell.scale_to_fit_height(t_ctx.content_height)       6            if cell.get_tex_string() == repeat_symbol:   !                cell.scale(1 / 2)       0        def create_table(t_ctx, tex_table_data):               table = VGroup()   &            for row in tex_table_data:   '                for table_entry in row:   0                    if table_entry.double_entry:   9                        first = table_entry.first_content   ;                        second = table_entry.second_content   +                        rect_f = Rectangle(   P                            width=t_ctx.cell_width / 2, height=t_ctx.cell_height                           )   +                        rect_s = Rectangle(   P                            width=t_ctx.cell_width / 2, height=t_ctx.cell_height                           )   G                        apply_cell_sizing(t_ctx, first, half_size=True)   H                        apply_cell_sizing(t_ctx, second, half_size=True)   )                        rect_f.add(first)   *                        rect_s.add(second)   E                        rect = VGroup(rect_f, rect_s).arrange(buff=0)                       else:   5                        content = table_entry.content   )                        rect = Rectangle(   L                            width=t_ctx.cell_width, height=t_ctx.cell_height                           )   9                        apply_cell_sizing(t_ctx, content)   )                        rect.add(content)       #                    table.add(rect)       1            table.arrange_in_grid(buff=0, cols=4)                   return table               # drawing of tables               class TableEntry:   <            def __init__(self, content, double_entry=False):   0                self.double_entry = double_entry   *                self.raw_content = content   %                if self.double_entry:   <                    self.first_content = MathTex(content[0])   =                    self.second_content = MathTex(content[1])                   else:   3                    self.content = MathTex(content)   O                # if double entry is true, then content is an array of length 2       !        def is_RIC_notation(txt):   4            # c'mon you can do better than this lamo   %            return txt[0].isnumeric()       >        def construct_table_series_RIC_addition_key_intervals(   S            t_ctx, funcs=[RIC_to_latex, RIC_to_addition_step, RIC_to_key_intervals]   
        ):               table_series = []   &            # RIC (base repr in latex)   "            for fun_step in funcs:                   step_table = []   '                for row in t_ctx.table:   "                    table_row = []   %                    for entry in row:   /                        if type(entry) == list:   2                            first_entry = entry[0]   3                            second_entry = entry[1]   5                            # assuming both are RIC's   @                            if not is_RIC_notation(first_entry):   =                                first_processed = first_entry   !                            else:   G                                first_processed = fun_step(first_entry)   A                            if not is_RIC_notation(second_entry):   ?                                second_processed = second_entry   !                            else:   I                                second_processed = fun_step(second_entry)       -                            table_row.append(   +                                TableEntry(   H                                    [first_processed, second_processed],   6                                    double_entry=True,   !                                )                               )   8                        elif not is_RIC_notation(entry):   ?                            table_row.append(TableEntry(entry))                           else:   &                            # it's RIC   I                            table_row.append(TableEntry(fun_step(entry)))       0                    step_table.append(table_row)   D                table_series.append(create_table(t_ctx, step_table))               return table_series       -        def draw_table_series(tables, title):               i = 0   ?            self.play(Write(Tex(title).next_to(tables[0], UP)))                for table in tables:   "                curr_table = table                       if i == 0:   1                    self.play(FadeIn(curr_table))                       self.wait()                   else:   K                    self.play(ReplacementTransform(prev_table, curr_table))                       self.wait()       '                prev_table = curr_table                   i += 1       +        t_ctx = TableContext(all_diatonics)       j        # draw_table_series(construct_table_series_RIC_addition_key_intervals(blues_base), "12-bar Blues")           draw_table_series(   E            construct_table_series_RIC_addition_key_intervals(t_ctx),   #            r"All Diatonic Chords",   	        )5��
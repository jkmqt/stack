(* 栈节点类：用于存储栈元素及指向下一个节点的引用 *)
class Node {
    val: Object;  // 节点存储的值
    next: Node;   // 指向下一个节点的引用

    (* 构造函数：初始化节点值和下一个节点 *)
    init(v: Object, n: Node): Node {
        {
            val <- v;
            next <- n;
            self;
        }
    };

    (* 获取节点值 *)
    get_val(): Object { val };

    (* 获取下一个节点 *)
    get_next(): Node { next };
};

(* 栈类：实现栈的基本操作 *)
class Stack {
    top: Node;  // 栈顶节点

    (* 构造函数：初始化空栈 *)
    init(): Stack {
        {
            top <- (new Node).init((new Object), self.top);  // 空栈时栈顶为特殊节点
            self;
        }
    };

    (* 判断栈是否为空 *)
    is_empty(): Bool {
        top.get_next() = (new Node).init((new Object), top)  // 检查栈顶下一个节点是否为空
    };

    (* 压栈操作：将元素放入栈顶 *)
    push(element: Object): Object {
        {
            top <- (new Node).init(element, top);  // 创建新节点作为新栈顶
            element;  // 返回压入的元素
        }
    };

    (* 弹栈操作：移除并返回栈顶元素 *)
    pop(): Object {
        let top_val: Object in  // 存储栈顶元素值
        if is_empty() then
            { abort(); (new Object); }  // 空栈弹栈时终止程序
        else
            {
                top_val <- top.get_val();
                top <- top.get_next();  // 更新栈顶为下一个节点
                top_val;  // 返回弹出的元素
            }
    };

    (* 获取栈顶元素（不弹出） *)
    top(): Object {
        if is_empty() then
            { abort(); (new Object); }  // 空栈取顶时终止程序
        else
            top.get_val()
    };
};

(* 测试类：验证栈的功能 *)
class Main inherits IO {
    main(): Object {
        let s: Stack <- (new Stack).init() in  // 创建栈实例
        {
            out_string("栈是否为空: ");
            out_bool(s.is_empty());
            out_string("\n");

            out_string("压入元素 10\n");
            s.push(10);
            out_string("栈顶元素: ");
            out_int((s.top()));
            out_string("\n");

            out_string("压入元素 20\n");
            s.push(20);
            out_string("栈顶元素: ");
            out_int((s.top()));
            out_string("\n");

            out_string("弹出元素: ");
            out_int((s.pop()));
            out_string("\n");
            out_string("栈顶元素: ");
            out_int((s.top()));
            out_string("\n");

            out_string("栈是否为空: ");
            out_bool(s.is_empty());
            out_string("\n");
        }
    };
};

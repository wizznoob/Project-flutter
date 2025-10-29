import 'package:flutter/material.dart';

// ^ Default Button
class DefaultButton extends StatefulWidget {
  final String label;
  final VoidCallback onTap;

  const DefaultButton({super.key, required this.label, required this.onTap});

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    const double width = 154;
    const double height = 34;
    const double shadow = 4;

    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) {
        setState(() => _pressed = false);
        widget.onTap();
      },
      onTapCancel: () => setState(() => _pressed = false),

      child: SizedBox(
        height: height + shadow.abs(),
        width: width + shadow.abs(),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -shadow,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              bottom: _pressed ? -shadow : 0,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xFFEFB023),
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Center(
                  child: Text(
                    widget.label,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ^ Counter Button
class AddMinButton extends StatefulWidget {
  final VoidCallback onPressed;
  const AddMinButton({super.key, required this.onPressed});

  @override
  State<AddMinButton> createState() => _AddMinButtonState();
}

class _AddMinButtonState extends State<AddMinButton> {
  bool _pressed = false;
  int _counter = 0;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '$_counter');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _controller.text = '$_counter';
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
      _controller.text = '$_counter';
    });
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTapDown: (_) => setState(() => _pressed = true),
            onTapUp: (_) {
              setState(() => _pressed = false);
              _decrementCounter();
              widget.onPressed();
            },
            onTapCancel: () => setState(() => _pressed = false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Color(0xFFEFB023),
                shape: BoxShape.circle,
                border: Border.all(width: 2),
              ),
              child: Center(child: Icon(Icons.remove, size: 15)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 15,
              child: TextField(
                clipBehavior: Clip.none,
                controller: _controller,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                ),
                onChanged: (value) {
                  final int? parsed = int.tryParse(value);
                  if (parsed != null && parsed >= 0) {
                    setState(() => _counter = parsed);
                  }
                },
              ),
            ),
          ),

          GestureDetector(
            onTapDown: (_) => setState(() => _pressed = true),
            onTapUp: (_) {
              setState(() => _pressed = false);
              _incrementCounter();
              widget.onPressed();
            },
            onTapCancel: () => setState(() => _pressed = false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Color(0xFFEFB023),
                shape: BoxShape.circle,
                border: Border.all(width: 2),
              ),
              child: Center(child: Icon(Icons.add, size: 15)),
            ),
          ),
        ],
      ),
    );
  }
}

// ^ Small Button
class SnmallButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;

  const SnmallButton({super.key, required this.label, required this.onPressed});

  @override
  State<SnmallButton> createState() => _SnmallButtonState();
}

class _SnmallButtonState extends State<SnmallButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    const double width = 89;
    const double height = 28;
    const double shadow = 4;

    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) {
        setState(() => _pressed = false);
        widget.onPressed();
      },
      onTapCancel: () => setState(() => _pressed = false),

      child: SizedBox(
        height: height + shadow.abs(),
        width: width + shadow.abs(),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -shadow,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              bottom: _pressed ? -shadow : 0,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xFFEFB023),
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Center(
                  child: Text(
                    widget.label,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ^ Container Button
class ContainerButton extends StatefulWidget {
  final double width;
  final double height;
  final double shadow;
  final Color color;
  final BorderRadius borderRadius;
  final Widget child;
  final VoidCallback onPressed;

  const ContainerButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.width = 100,
    this.height = 40,
    this.shadow = 4,
    this.color = const Color(0xFFEFB023),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });

  @override
  State<ContainerButton> createState() => _ContainerButtonState();
}

class _ContainerButtonState extends State<ContainerButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) {
        setState(() => _pressed = false);
        widget.onPressed();
      },
      onTapCancel: () => setState(() => _pressed = false),

      child: SizedBox(
        width: widget.width + widget.shadow,
        height: widget.height + widget.shadow,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -widget.shadow,
              child: Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 2),
                  borderRadius: widget.borderRadius,
                ),
              ),
            ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom: _pressed ? -widget.shadow : 0,
              child: Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  color: widget.color,
                  border: Border.all(width: 2),
                  borderRadius: widget.borderRadius,
                ),

                child: Center(child: widget.child),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ^Add Button
class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(8),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          shape: BoxShape.circle,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            '+',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

// ^X Button
class XButton extends StatelessWidget {
  final VoidCallback? onTap;

  const XButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(width: 2),
          shape: BoxShape.circle,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text('X', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

// ^Icon Button
class IcnButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Icon label;

  const IcnButton({super.key, required this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(6),
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2),
        ),
        child: Center(child: label),
      ),
    );
  }
}

class CounterDetailButton extends StatefulWidget {
  final VoidCallback? onTap;
  const CounterDetailButton({super.key, required this.onTap});

  @override
  State<CounterDetailButton> createState() => CounterDetailButtonState();
}

class CounterDetailButtonState extends State<CounterDetailButton> {
  bool _minPressed = false;
  bool _addPressed = false;
  int _counter = 0;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '$_counter');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _controller.text = '$_counter';
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
      _controller.text = '$_counter';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            GestureDetector(
              onTapDown: (_) => setState(() => _minPressed = true),
              onTapUp: (_) {
                setState(() => _minPressed = false);
                _decrementCounter();
                widget.onTap;
              },
              onTapCancel: () => setState(() => _minPressed = false),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                width: _minPressed ? 30 : 34,
                height: _minPressed ? 30 : 34,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2),
                ),
                child: Center(child: Icon(Icons.remove)),
              ),
            ),

            Expanded(
              child: SizedBox(
                width: 20,
                child: TextField(
                  controller: _controller,
                  onTap: () {
                    if (_controller.text == '0') {
                      _controller.clear();
                    }
                  },
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                    isDense: true,
                  ),
                  onChanged: (value) {
                    final int? parsed = int.tryParse(value);
                    if (parsed != null && parsed >= 0) {
                      setState(() => _counter = parsed);
                    }
                  },
                ),
              ),
            ),

            GestureDetector(
              onTapDown: (_) => setState(() => _addPressed = true),
              onTapUp: (_) {
                setState(() => _addPressed = false);
                _incrementCounter();
                widget.onTap;
              },
              onTapCancel: () => setState(() => _addPressed = false),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                width: _addPressed ? 30 : 34,
                height: _addPressed ? 30 : 34,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2),
                ),
                child: Center(child: Icon(Icons.add)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './models/category.dart';
import './models/device.dart';

const DUMMY_CATEGORIES = [
  Categoryy(
    id: 'c1',
    title: 'Active',
    images: Image(image: AssetImage('assets/images/transistor.png')),
  ),
  Categoryy(
      id: 'c2',
      title: 'Passive',
      images: Image(image: AssetImage('assets/images/resistor.png'))),
  Categoryy(
    id: 'c3',
    title: 'ICs',
    images: Image(
      image: AssetImage('assets/images/ic.png'),
    ),
  ),
  Categoryy(
    id: 'c4',
    title: 'Logical',
    images: Image(image: AssetImage('assets/images/logic.png')),
  ),
  Categoryy(
    id: 'c5',
    title: 'Batterries',
    images: Image(
      image: AssetImage('assets/images/battery.png'),
    ),
  ),
];

const Dummy_Device = [
  Device(
    id: 'd1',
    categories: ['c2'],
    title: 'Resistor',
    images: ['assets/images/resistors.png', 'assets/images/color.png'],
    detail: [
      'Resistor',
      'Resistors are electronic components which have a specific, never-changing electrical resistance.The resistors resistance limits the flow of electrons through a circuit.They are passive components, meaning they only consume power (and can\'t generate it). Resistors are usually added to circuits where they complement active components like op-amps, microcontrollers, and other integrated circuits. Commonly resistors are used to limit current, divide voltages, and pull-up I/O lines.\n\nThe electrical resistance of a resistor is measured in ohms. The symbol for an ohm is the greek capital-omega: Ω. The (somewhat roundabout) definition of 1Ω is the resistance between two points where 1 volt (1V) of applied potential energy will push 1 ampere (1A) of current.\n\n',
    ],
  ),
  Device(
    id: 'd2',
    categories: ['c2'],
    title: 'Inductor',
    images: ['assets/images/inductor.jpg', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd3',
    categories: ['c2'],
    title: 'Capacitor',
    images: ['assets/images/capacitors.jpg', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd4',
    categories: ['c1'],
    title: 'Diodes',
    images: ['assets/images/diodes.png', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd5',
    categories: ['c1'],
    title: 'Transistors',
    images: ['assets/images/transistor.jpg', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd6',
    categories: ['c3'],
    title: 'Microcontroller',
    images: ['assets/images/microcontrollers.jpg', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd7',
    categories: ['c3'],
    title: 'Microprocessor',
    images: ['assets/images/microprocessor.jpg', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd8',
    categories: ['c4'],
    title: 'AND Gate',
    images: ['assets/images/andgatee.png', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd9',
    categories: ['c4'],
    title: 'OR Gate',
    images: ['assets/images/orgatee.png', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd10',
    categories: ['c4'],
    title: 'NOT Gate',
    images: ['assets/images/notgatee.png', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd11',
    categories: ['c4'],
    title: 'XOR Gate',
    images: ['assets/images/xorgatee.png', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd12',
    categories: ['c5'],
    title: 'Chargeable',
    images: ['assets/images/chargeable.png', 'assets/images/color.png'],
    detail: [],
  ),
  Device(
    id: 'd13',
    categories: ['c5'],
    title: 'Non Chargeable',
    images: ['assets/images/notchargeable.jpg', 'assets/images/color.png'],
    detail: [],
  ),
];

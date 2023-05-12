abstract class StudentEvent {}

class InitEvent extends StudentEvent {}

class Sum_class extends StudentEvent
{
  String t,s;
  Sum_class(this.t,this.s);
}
class Sub_class extends StudentEvent
{
  String t,s;
  Sub_class(this.t,this.s);
}
class Str_class extends StudentEvent
{
  String t,s,s1;
  Str_class(this.t,this.s,this.s1);
}
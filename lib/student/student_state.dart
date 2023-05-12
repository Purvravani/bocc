class StudentState {
  StudentState init() {
    return StudentState();
  }

  StudentState clone() {
    return StudentState();
  }
}
class Sum_State extends StudentState
{
  int total;
  Sum_State(this.total);
}
class Sub_State extends StudentState
{
  int total;
  Sub_State(this.total);
}
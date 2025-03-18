# TIL

2025년 3월 18일

## 1주차 과제

[플루터로 hello world앱실행하기](https://github.com/izuna69/app/blob/test2/2021136057_b/%ED%94%8C%EB%A3%A8%ED%84%B0%EB%A1%9C%20hello%20world%20%EC%95%B1%EC%8B%A4%ED%96%89%ED%95%98%EA%B8%B0%201b230e98279f8038bc9afa1ec9603995.md)

## 2주차 과제

## 오늘할것

구구단 출력

사각형 /,\,X출력

년,월,일을 입력하여 요일 알기

### 실습 1. 구구단

void main() {
for (int i = 2; i < 10; i++) {
for (int j = 1; j < 10; j++) {
print('$i X $j =  ${j * i}');
}
print('');
}
}

### 실습 2.  사각형

void main() {
int n = 10; // 정사각형 크기

for (int i = 0; i < n; i++) {
print('

*'*

n);
}
print("");
for (int i = 0; i < n; i++) {
if (i == 0  i == n - 1) {
print('

*'*

n);
} else {
print('

*' + ' '*

(n - 2) + '

*');
}
}
print("");
for (int i = 0; i < n; i++) {
print(' '*

i + '/');
}
print("");
for (int i = 0; i < n; i++) {
print(' ' * (n - i - 1) + '\');
}
print("");
for (int i = 0; i < n; i++) {
String line = "";
for (int j = 0; j < n; j++) {
if (i == j  j == n - i - 1) {
line += '*';
} else {
line += ' ';
}
}
print(line);
}
}

### 실습 3. 요일

void main() {
int year = 2025;
int month = 3;
int day = 10;

List weekdays = ["월", "화", "수", "목", "금", "토", "일"];

DateTime date = DateTime(year, month, day);

print("${weekdays[date.weekday - 1]}요일");
}
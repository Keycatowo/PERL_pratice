# PERL 上課練習整理
## 執行方式
#### 1 一般執行
```
perl xx.perl
```
此模式下可以丟入參數給程式，存在`@ARGV`裡面
#### 2 先設定成執行檔案
```
chmod +x xx.pl
./xx.pl
```
其中`xx.pl`的首行需放perl位置
例如
```
#!/usr/bin/perl
```
#### 3 單行模式
```
perl -e 'print "Hello World\n";'
```
#### 4 interactive mode
```
perl -del
```

## 基本語法

### 前綴變數
+ 註解：`#`
+ 變數：`$`
+ 陣列：`@`
+ 結尾：`;`
+ HASH：`%`

### if控制

| 數值 | 字串 | 意義             |
| ---- | ---- | ---------------- |
| ==   | eq   | euqal            |
| !=   | ne   | not euqal        |
| <    | lt   | less than        |
| >    | gr   | greater than     |
| <=   | le   | less or equal    |
| >=   | ge   | greater or euqal |
| <=>  | cmp  | <:-1, =:0, >:1   |

### 迴圈

### 陣列處理
### 字串處理

## 正規表示
### 三種模式及各自後綴
+ 匹配:`m/.../`
    + `i`:大小寫不敏感
    + `m`:`^`,`$`will now match against a newline boundary, instead of a string boundary.
    + `s`: Allow use of `.` to match a newline character
    + `g`: Globally finds all matches.
+ 替換:`s/.../`
+ 轉寫:`tr/.../`
    + `c`:
    + `d`:
    + `s`:

### 匹配特殊變數
+ `$&`:
+ $`:
+ `$'`






## 常見踩雷點

#### 分號忘了加
####

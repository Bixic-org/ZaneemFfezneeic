# Practical Categorical Grammar

- PCG: 実践範疇文法
- Practical Categorical Grammar
- a.k.a. SH Grammar, Slime-Haruka Grammar

Ajdukiewicz、Bar-Hillel らによって編成された範疇文法のもとで、スライム氏のアイデアを陽花が定式化したものである。

## 基本文法

### 型種別

- 基本型:
- 関数型
- 有名型
- 総称型

### 関数型

左適用: 左から e1 を受け取ると e2 を返す

```pcg
|e1,e2
```

右適用: 右から e2 を受け取ると e1 を返す

```pcg
e1,e2|
```

選択: e1 または e2

```pcg
e1 : e2
```

語彙への型の割当て

```pcg
Type << Symbol
```

### 型定義

基本形式: 有名型及び関数型のみで新たな有名型を定義する

```pcg
A <- e
```

ガード形式: 総称型を定義したのち総称型と有名型を用いて新たな有名型を定義する

```pcg
A <- e |: X
```

派生形式: 選択を用いて新たな型を定義し、派生型関係を構築する

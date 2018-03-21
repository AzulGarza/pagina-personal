#Modelo con un solo bien, dotación y gobierno


##Gobierno
En este caso el gobierno compra $g_s$ cantidad del bien en la economía para cada $s \geq t$; es decir, la senda de compras del gobierno $\{g_s\}_{s \geq t}$ está dada. Para financiar estas compras, el gobierno establece un impuesto de suma fija $\tau_s$ para cada $s \geq t$ y además se endeuda a la misma tasa a la que el agente representativo presta bonos. Se denota como $d_{s-1}$ para $s \geq t$ la deuda del gobierno con $d_t$ dada. Por lo tanto, la restricción presupuestal del gobierno está dada por

$$
\begin{equation}
g_s = \tau_s + d_{s+1} - (1+r_{s-1})d_s
(\#eq:rpgob)
\end{equation}
$$

Para cada $s \geq t$. El déficit del gobierno es $d_{s+1} -d_s = g_s - \tau_s + r^*d_s$. Además, se verifica que para cada $s \geq t$,

$$
\sum_{j \geq s} \Delta_j g_j = -(1 + r_{s-1})d_s + \sum_{j \geq s} \Delta_j \tau_j 
$$
Es decir, 

$$
\begin{equation}
\hat{g_s} = -(1-\beta)(1+ r_{s-1})d_s + \hat{\tau_s}
(\#eq:rpgobperm)
\end{equation}
$$

Donde $\hat{g_s}$ y $\hat{\tau_s}$ son el valor permanente de las compras del gobierno en $s$ y el valor permanente de la recaudación del gobierno en $s$, respectivamente. 

##Problema de optimización

El objetivo del agente representativo es,

$$
\max_{c_s, b_{s+1}, s\geq t} \{ \sum_{s \geq t} \beta^{s-t}(\ln(c_s) + v(g_s)): c_s + \tau_s + b_{s+1} = y_s + (1+r_{s-1})b_s, s \geq t \} 
$$

En este problema están dados $\{y_s, r_{s-1}, g_s\}_{s\geq t}$, $b_t$ y $d_t$.

Despejando $\tau_s$ de \@ref(eq:rpgob) y sustituyendo en la restricción presupuestal del agente representativo obtenemos que,

$$
\begin{equation}
c_s + g_s + b_{s+1} - d_{s+1} = y_s + (1+r_{s-1})(b_s - d_s)
(\#eq:rpgobcons)
\end{equation}
$$
Para $s \geq t$. En este caso, la balanza comercial está dada por,

$$
T_s = y_s - c_s - g_s
$$

Y la cuenta corriente está dada por,

$$
CA_s = (b_{s+1} - d_{s+1}) - (b_s - d_s) = T_s + r_{s-1}(b_s -d_s)
$$

##Condiciones de primer orden

A partir de las condiciones de primer orden llegamos a la misma ecuación de euler dado que los impuestos son de suma fija, para cada $s \geq t$,

$$
c_{s+1} = \beta(1 + r_{s})c_s
$$

##Restricción presupuestal

Iterando hacia adelante \@ref(eq:rpgobcons) llegamos a que para cada $s$, en el óptimo, 

$$
\sum_{j \geq s} \Delta_j T_j = -(1 + r_{s-1})(b_s-d_s)
$$
O bien, 

$$
\sum_{j\geq s} \Delta_j c_j = (1 + r_{s-1})(b_s -d_s) + \sum_{j \geq s} \Delta_j y_j - \sum_{j \geq s} \Delta_j g_j
$$

## Solución

Como vimos, a partir de la ecuación de euler se verfifica que para cada $s \geq t$ y cada $j \geq s$,

$$
\Delta_j c_j = \beta^{j-s} \Delta_s c_s
$$
Por lo que, en equilibrio, el valor del consumo en el periodo $s$ está dado por,

$$
c_s = (1-\beta)(1 + r_{s-1})(b_s-d_s) + \hat{y_s} - \hat{g_s}
$$

##Supuestos habituales

Si $r_{s-1} = r^*$ y $\beta(1+r^*) = 1$ entonces,

$$
c_s = r^*(b_s-d_s) + \hat{y_s} - \hat{g_s}
$$
Para cada $s \geq t$. Con esto,

$$
\begin{align}
CA_s &= T_s + r^*(b_s-d_s) \\
&= y_s - c_s - g_s + r^*(b_s-d_s)\\
&= (y_s - \hat{y_s}) - (g_s - \hat{g_s})
\end{align}
$$

##Ejemplo

Supongamos que $r_{s-1} = r^*$, $\beta(1+r^*)=1$, $y_s = y$, $g_s = g$ para cada $s \geq t$ y que $b_t - d_t = 0$. De los primeros dos supuestos obtenemos que el consumo es el mismo en todos los periodos, esto es $c = c_{s+1} = c_s$ para cada $s \geq t$. Del tercer y cuarto supuesto obtenemos que $\hat{y_s} = y$ y $\hat{g_s} = g$ para cada $s \geq t$. Por lo tanto, utilizando el último supuesto, 

$$
c = c_t = (1-\beta)(1+r^*)(b_t-d_t) + \hat{y_t} - \hat{g_t} = y-g
$$
Claramente $T_s = CA_s = 0$ para cada $s \geq t$.

### Choque en el gasto del gobierno 1

Ahora, además de los supuestos anteriores, supongamos que el gobierno eleva sus compras a partir del periodo $t$. Es decir, para cada $s \geq t$ se tiene que $g_s = \lambda g$, con $\lambda > 1$. Denotamos como $c_1$ el consumo durante este choque. Luego, $\hat{g_s} = \lambda g$; por lo tanto,

$$
c_1 = y - \lambda g = c + (1-\lambda)g < c
$$

Es decir, en este caso se reduce el nivel de consumo. Como el choque es permanente se sostiene que $T_s = CA_s = 0$.

### Choque en el gasto del gobierno 2

Ahora supongamos que el choque anterior sucede en sólo un periodo. Es decir, $g_s = \lambda g$ para $\lambda >1$ si $s = t$ y $g_s = g$ si $s \geq t+1$. En este caso, 

$$
\begin{align}
\hat{g_t} &= (1-\beta)\sum_{s\geq t} \beta^{s-t} g_s \\
&=(1-\beta)\left(\lambda g + \sum_{s\geq t+1}\beta^{s-t}g \right) \\
&= (1-\beta)\left(\lambda g + \beta g \sum_{s\geq t+1} \beta^{s-(t+1)}\right) \\
&= (1-\beta)\lambda g + \beta g 
\end{align}
$$

Y $\hat{g_s} = g$ si $s \geq t+1$. Si denotamos $c_2$ el consumo generado por este llegamos a que,

$$
c_2 = y - (1-\beta)\lambda g - \beta g = c + (1-\beta)(1-\lambda)g < c
$$

Dado que el choque es de un periodo, la balanza comercial y la cuenta corriente cambian en el tiempo. Así, en este caso,

$$
\begin{align}
T_t &= y_t - c_t - g_t  \\
&= y - (y - (1-\beta)\lambda g - \beta g) - \lambda g \\
&= \beta (1 - \lambda) g < 0
\end{align}
$$

Por lo que en este periodo se importan bienes. Por otro lado, si $s \geq t+1$ entonces,

$$
\begin{align}
T_s &= y_s - c_s - g_s \\
& = y - (y - (1-\beta)\lambda g - \beta g) - g \\
& = \beta(\lambda - 1)g > 0
\end{align}
$$

Por lo que en estos periodos se exportan bienes. Para la cuenta corriente, recordemos que $b_t - d_t = 0$ por lo que $CA_t = T_t$. Por otro lado, *para encontrar el valor de la deuda externa es necesario establecer supuestos sobre la recaudación*. Supongamos que $\tau_s = \tau$ para cada $s \geq t$ (siempre cobra los mismos impuestos) y que $d_t = 0$. Luego, por \@ref(eq:rpgobperm) se tiene que 

$$
(1-\beta)\lambda g + \beta g = \hat{g_t} = \tau
$$

Así, 

$$
\begin{align}
d_{t+1} &= g_t - \tau_t \\
&= \lambda g - \tau \\
&= \lambda g -(1-\beta)\lambda g - \beta g \\
&= \beta (\lambda -1) g \\
& = -CA_t
\end{align}
$$
Por lo que el gobierno se endeuda en $t$ y $b_{t+1} = 0$. Si por otro lado, el presupuesto es balanceado, es decir $\tau_s = g_s$ para cada $s \geq t$ entonces $d_{t+1} = 0$ y $b_{t+1} = \beta (1- \lambda)g < 0$.

### Choque financiero

Ahora supongamos que la tasa de interés aumenta en el periodo $t$ de forma inesperada. Formalmente, supongamos que $\beta(1+r_s) = \frac{1}{\lambda}$ con $\lambda < 1$ si $s = t$ y $\beta(1+r_{s}) = \beta(1+r^*)=1$ para $s = t-1$ y $s \geq t+1$. Además supongamos que $y_s = y$ y $g_s = g$ para $s \geq t$ y $b_t - d_t < 0$. Bajo estas condiciones, para cualquier $s \geq t+1$ se cumple que

$$
\begin{align}
\Delta_s &= \prod_{k  = t} ^{s-1} \frac{1}{1+r_k} \\
&= \lambda \beta^{s-t}
\end{align}
$$
Por lo tanto,

$$
\begin{align}
\hat{y_t} &= (1-\beta)\sum_{s \geq t} \Delta_s y \\
&= (1-\beta)y(1 + \sum_{s \geq t+1} \lambda \beta^{s-t}) \\
&= (1-\beta)y\left(1 + \frac{\lambda \beta}{1-\beta}\right) \\
&= (1 - \beta)y + \beta \lambda y
\end{align}
$$

Equivalentemente $\hat{g_t} = (1-\beta)g + \beta \lambda g$. Con esto, obtenemos que,

$$
\begin{align}
c_t &= (1-\beta)(1+r_{t-1})(b_t-d_t) + \hat{y_t} - \hat{g_t} \\
&= r^*(b_t-d_t) + (1-\beta)(y-g) + \beta \lambda (y-g)
\end{align}
$$

Denotemos por $c_0$ el valor del consumo en ausencia de choque; es decir, $\lambda = 1$. Luego, $c_0 = r^*(b_t - d_t) + y- g$. Así,

$$
c_t = c_0 + \beta(\lambda - 1)(y-g) < c_0
$$

Tras el choque, se verifica que $c = c_{s+1} = c_s$ para $c \geq t+1$. Usando la ecuación de euler entre $t$ y $t+1$ obtenemos que 

$$
\begin{align}
c &= c_{t+1} \\
&= \beta(1 + r_t)c_t \\
&= \frac{c_t}{\lambda}
\end{align}
$$
La cuenta corriente en $t$ está dada por,

$$
\begin{align}
CA_t &= y- c_t - g + r^*(b_t - d_t) \\
& = y - g - (1-\beta)(y-g) - \beta \lambda (y-g) \\
& = \beta(1-\lambda)(y-g) > 0
\end{align}
$$

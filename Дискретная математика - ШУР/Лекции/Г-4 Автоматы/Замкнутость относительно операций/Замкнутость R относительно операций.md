# Замкнутость $\mathbf{R}$ относительно операций

>[[Теорема Клини#^f831a2|Теорема Клини]] позволяет доказывать замкнутость $\mathbf{R}$ относительно операций
>
>$\mathbf{R}$ замкнуто относительно *дополнения:*
>если $\mathcal{A} = (Q, \Sigma, \delta, s, T)$  - ДКА, $L = L(\mathcal{A})$, то $\overline{L} = L(\overline{\mathcal{A}})$, где $\overline{\mathcal{A}} = (Q, \Sigma, \delta, s, Q \setminus T)$
>
>$\mathbf{R}$ замкнуто относительно *пересечения*, потому что $L_{1} \cap L_{2} = \overline{(\overline{L_{1}} \cup \overline{L_{2}})}$
>([[Законы алгебры множеств#^4edc0d|формулы де Моргана]])
>
>$\mathbf{R}$ замкнуто относительно *разности*, потому что $L_{1} \setminus L_{2} = L_{1} \cap \overline{L_{2}}$

>Объединение, пересечение и разность регулярных языков можно распознавать при помощи декартова произведения ДКА:
>пусть $\mathcal{A}_{1} = (Q_{1}, \Sigma, \delta_{1}, s_{1}, T_{1}), \mathcal{A}_{2} = (Q_{2}, \Sigma, \delta_{2}, s_{2}, T_{2})$ - ДКА
>$\mathcal{A}_{\cup} = (Q_{1} \times Q_{2}, \Sigma, \delta_{1} \times \delta_{2}, (s_{1}, s_{2}), Q_{1} \times Q_{2} \setminus (Q_{1} \setminus T_{1}) \times (Q_{2} \setminus T_{2}))$
>$\mathcal{A}_{\cap} = (Q_{1} \times Q_{2}, \Sigma, \delta_{1} \times \delta_{2}, (s_{1}, s_{2}), T_{1} \times T_{2})$
>$\mathcal{A}_{\setminus} = (Q_{1} \times Q_{2}, \Sigma, \delta_{1} \times \delta_{2}, (s_{1}, s_{2}), T_{1} \times (Q_{2} \setminus T_{2}))$
SELECT fechanaci, edad_actual( fechanaci ), SYSDATE FROM empleados WHERE edad_actual(fechanaci) >= 35;

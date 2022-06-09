def estatus_alumno(nombre, clave, nota)
    
    if nota < 5
        estatus = "tu estatus es Reprobada"
    else
        estatus = "tu estatus es Aprobada"
    end
    return "#{nombre} #{estatus}"
end
    puts estatus_alumno("Ursula Cervantes","tlx023", 6)
    puts estatus_alumno("Angel Perez","tlx024", 5)
    puts estatus_alumno("Luis Prado","tlx025", 4)
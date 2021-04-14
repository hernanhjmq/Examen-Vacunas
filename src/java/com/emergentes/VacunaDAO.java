
package com.emergentes;

import java.util.ArrayList;

public class VacunaDAO 
{
   private int correlativo;
    private ArrayList<Vacuna> Vacunas;

    public VacunaDAO() 
    {
        this.Vacunas = new ArrayList<Vacuna>();
    }

    
    public int getCorrelativo() 
    {
        return correlativo;
    }

    public void setCorrelativo(int correlativo) 
    {
        this.correlativo = correlativo;
    }

    public ArrayList<Vacuna> getVacunas() {
        return Vacunas;
    }

    public void setVacunas(ArrayList<Vacuna> Vacunas) {
        this.Vacunas = Vacunas;
    }

    // todo para insertar vacunas 
    public void insertar(Vacuna item)
    {
        this.Vacunas.add(item);
    }
    // metodo para modificar 
     public void modificar (int id, Vacuna item)
    {
        int pos = posicion(id);
        this.Vacunas.set(pos, item);
    }
     // metodo para eliminar 
      public void eliminar(int id )
    {
        int pos = posicion(id);
        Vacunas.remove(pos);
    }
      
    // metodo para retornar la pocicion del array list 
    public  int posicion(int id )
    {
        int i = -1;
        if (Vacunas.size() > 0)
        {
                for(Vacuna item: Vacunas)
                {
                    ++i;
                    if(item.getId() == id)
                    {
                        break;
                    }
                }    
        }    
        
        return i;
    }
      
}

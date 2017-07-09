/*
The MIT License (MIT)

Copyright (c) 2015 Los Andes University

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
package co.edu.uniandes.csw.simpleapp.resources;

import co.edu.uniandes.csw.auth.filter.StatusCreated;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import co.edu.uniandes.csw.simpleapp.api.IBranchLogic;
import co.edu.uniandes.csw.simpleapp.dtos.detail.BranchDetailDTO;
import co.edu.uniandes.csw.simpleapp.entities.BranchEntity;
import java.util.ArrayList;
import javax.ws.rs.WebApplicationException;

/**
 * URI: branchs/
 * @generated
 */
@Path("/branchs")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class BranchResource {

    @Inject private IBranchLogic branchLogic;
    @Context private HttpServletResponse response;
    @QueryParam("page") private Integer page;
    @QueryParam("limit") private Integer maxRecords;

   
    /**
     * Convierte una lista de BranchEntity a una lista de BranchDetailDTO.
     *
     * @param entityList Lista de BranchEntity a convertir.
     * @return Lista de BranchDetailDTO convertida.
     * @generated
     */
    private List<BranchDetailDTO> listEntity2DTO(List<BranchEntity> entityList){
        List<BranchDetailDTO> list = new ArrayList<>();
        for (BranchEntity entity : entityList) {
            list.add(new BranchDetailDTO(entity));
        }
        return list;
    }


    /**
     * Obtiene la lista de los registros de Branch
     *
     * @return Colección de objetos de BranchDetailDTO
     * @generated
     */
    @GET
    public List<BranchDetailDTO> getBranchs() {
        if (page != null && maxRecords != null) {
            this.response.setIntHeader("X-Total-Count", branchLogic.countBranchs());
            return listEntity2DTO(branchLogic.getBranchs(page, maxRecords));
        }
        return listEntity2DTO(branchLogic.getBranchs());
    }

    /**
     * Obtiene los datos de una instancia de Branch a partir de su ID
     *
     * @param id Identificador de la instancia a consultar
     * @return Instancia de BranchDetailDTO con los datos del Branch consultado
     * @generated
     */
    @GET
    @Path("{id: \\d+}")
    public BranchDetailDTO getBranch(@PathParam("id") Long id) {
        return new BranchDetailDTO(branchLogic.getBranch(id));
    }

    /**
     * Se encarga de crear un Branch en la base de datos
     *
     * @param dto Objeto de BranchDetailDTO con los datos nuevos
     * @return Objeto de BranchDetailDTOcon los datos nuevos y su ID
     * @generated
     */
    @POST
    @StatusCreated
    public BranchDetailDTO createBranch(BranchDetailDTO dto) {
        return new BranchDetailDTO(branchLogic.createBranch(dto.toEntity()));
    }

    /**
     * Actualiza la información de una instancia de Branch
     *
     * @param id Identificador de la instancia de Branch a modificar
     * @param dto Instancia de BranchDetailDTO con los nuevos datos
     * @return Instancia de BranchDetailDTO con los datos actualizados
     * @generated
     */
    @PUT
    @Path("{id: \\d+}")
    public BranchDetailDTO updateBranch(@PathParam("id") Long id, BranchDetailDTO dto) {
        BranchEntity entity = dto.toEntity();
        entity.setId(id);
        return new BranchDetailDTO(branchLogic.updateBranch(entity));
    }

    /**
     * Elimina una instancia de Branch de la base de datos
     *
     * @param id Identificador de la instancia a eliminar
     * @generated
     */
    @DELETE
    @Path("{id: \\d+}")
    public void deleteBranch(@PathParam("id") Long id) {
        branchLogic.deleteBranch(id);
    }
    
}

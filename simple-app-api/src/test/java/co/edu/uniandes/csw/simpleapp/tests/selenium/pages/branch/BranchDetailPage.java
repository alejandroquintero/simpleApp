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
package co.edu.uniandes.csw.simpleapp.tests.selenium.pages.branch;

import co.edu.uniandes.csw.simpleapp.dtos.minimum.BranchDTO;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class BranchDetailPage {

    @FindBy(id = "delete-branch")
    private WebElement deleteBtn;

    @FindBy(id = "edit-branch")
    private WebElement editBtn;

    @FindBy(id = "list-branch")
    private WebElement listBtn;

    
    @FindBy(id = "name")
    private WebElement name;

    public void list() {
        listBtn.click();
    }

    public void edit() {
        editBtn.click();
    }

    public void delete() {
        deleteBtn.click();
    }

    public BranchDTO getData() {
        BranchDTO branch = new BranchDTO();        
        branch.setName(this.name.getText());        
        return branch;
    }
}

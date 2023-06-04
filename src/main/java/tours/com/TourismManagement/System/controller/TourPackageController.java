package tours.com.TourismManagement.System.controller;

import tours.com.TourismManagement.System.service.TourPackageServices;
import tours.com.TourismManagement.System.model.Package;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TourPackageController {


        @Autowired
        private TourPackageServices tourpackageServices;

        @GetMapping("/read-package")
        public String showreadPackagePage(Model model){
            model.addAttribute("packages", tourpackageServices.findAll());
            return "viewtourpackage";
        }
        @GetMapping("/add-tourpackage")
        public String showaddPackagePage(Model model){
            model.addAttribute("command", new Package());
            return "addtourpackage";
        }
        @PostMapping("/add-package")
        public String addPackage(@ModelAttribute("package") Package packag){
            tourpackageServices.savePackage(packag);
            return "redirect:/read-package";
        }

        @GetMapping("/update-package/{id}")
        public String showupdatePackagePage(@PathVariable int id, Model model){
            model.addAttribute("id", id);
            model.addAttribute("command", tourpackageServices.findById(id).orElse(null));
            return "updatetourpackage";
        }
        @PostMapping("/update-package/{id}")
        public String updatePackage(@PathVariable int id, @ModelAttribute("package") Package packag){
            tourpackageServices.updatepackage(id, packag);
            return "redirect:/read-package";
        }

        @GetMapping("/delete-package/{id}")
        public String deletePackage(@PathVariable int id){
            tourpackageServices.deleteById(id);
            return "redirect:/read-package";
        }
    }




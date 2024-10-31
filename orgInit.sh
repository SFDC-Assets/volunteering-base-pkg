sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p volunteering -e base.pkg
sf project deploy start
sf org assign permset -n VolunteeringApp
sf data import tree -p data/VolunteerImportPlan.json
sf apex run -f scripts/VolunteerSetupScript.cls
sf org open

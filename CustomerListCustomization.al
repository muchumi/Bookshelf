profile MyProfile
{
    Description = 'My Profile';
    RoleCenter = "Order Processor Role Center";
    Customizations = MyCustomization;
}
pagecustomization MyCustomization customizes "Customer List"
{
    layout
    {
        modify("Responsibility Center")
        {
            // Disabling viewing of the responsibility center for the specified profile
            Visible = false;
        }
    }
}
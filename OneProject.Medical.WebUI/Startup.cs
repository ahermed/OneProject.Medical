using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OneProject.Medical.WebUI.Startup))]
namespace OneProject.Medical.WebUI
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

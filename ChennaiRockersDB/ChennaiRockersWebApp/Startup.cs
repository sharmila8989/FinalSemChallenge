using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ChennaiRockersWebApp.Startup))]
namespace ChennaiRockersWebApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

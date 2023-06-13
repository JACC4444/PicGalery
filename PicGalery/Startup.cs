using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PicGalery.Startup))]
namespace PicGalery
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

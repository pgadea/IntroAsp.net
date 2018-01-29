using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IntroAsp.net.Startup))]
namespace IntroAsp.net
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

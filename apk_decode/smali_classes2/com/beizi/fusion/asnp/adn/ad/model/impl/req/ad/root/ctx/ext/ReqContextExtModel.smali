.class public Lcom/beizi/fusion/asnp/adn/ad/model/impl/req/ad/root/ctx/ext/ReqContextExtModel;
.super Lcom/beizi/fusion/asnp/adn/ad/model/impl/req/ASNPJsonRequestModel;
.source "SourceFile"


# instance fields
.field private appInstall:Ljava/util/List;
    .annotation runtime Lcom/beizi/fusion/ng;
        key = "appInstall"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/fusion/asnp/adn/ad/model/impl/req/ad/root/ctx/ext/install/ReqAppInstallModel;",
            ">;"
        }
    .end annotation
.end field

.field private blackListVersion:Ljava/lang/String;
    .annotation runtime Lcom/beizi/fusion/ng;
        key = "blackListVersion"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/req/ASNPJsonRequestModel;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public setAppInstall(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/asnp/adn/ad/model/impl/req/ad/root/ctx/ext/install/ReqAppInstallModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/asnp/adn/ad/model/impl/req/ad/root/ctx/ext/ReqContextExtModel;->appInstall:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setBlackListVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/asnp/adn/ad/model/impl/req/ad/root/ctx/ext/ReqContextExtModel;->blackListVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

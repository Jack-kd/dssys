.class public Lcom/meishu/sdk/core/utils/PackageBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/PackageBean$RewardConfigBean;,
        Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;,
        Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;,
        Lcom/meishu/sdk/core/utils/PackageBean$AdBean;,
        Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;,
        Lcom/meishu/sdk/core/utils/PackageBean$DpFlagBean;,
        Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;,
        Lcom/meishu/sdk/core/utils/PackageBean$DClick;,
        Lcom/meishu/sdk/core/utils/PackageBean$AppBean;
    }
.end annotation


# instance fields
.field private ad:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

.field private app:Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

.field private dclk:Lcom/meishu/sdk/core/utils/PackageBean$DClick;

.field private defImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dpflag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$DpFlagBean;",
            ">;"
        }
    .end annotation
.end field

.field public dpstay:I

.field private due:I

.field private fieldExport:Ljava/lang/Integer;

.field private happy:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

.field private jbUrlPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noldp:I

.field private olp:I

.field private shakeTimeout:J

.field private sty:Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;

.field private syncSave:I

.field private useBrowser:I

.field private useHttps:I

.field private ver:Ljava/lang/String;

.field private verbosity:I

.field public webviewBlackSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public webviewLimitedSchemes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->dpstay:I

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->useHttps:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getAd()Lcom/meishu/sdk/core/utils/PackageBean$AdBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->ad:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->app:Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDclk()Lcom/meishu/sdk/core/utils/PackageBean$DClick;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->dclk:Lcom/meishu/sdk/core/utils/PackageBean$DClick;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->defImages:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDpflag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$DpFlagBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->dpflag:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDpstay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->dpstay:I

    .line 2
    .line 3
    return v0
.end method

.method public getDue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->due:I

    .line 2
    .line 3
    return v0
.end method

.method public getFieldExport()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->fieldExport:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHappy()Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->happy:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJbUrlPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->jbUrlPrefixes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNoldp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->noldp:I

    .line 2
    .line 3
    return v0
.end method

.method public getOlp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->olp:I

    .line 2
    .line 3
    return v0
.end method

.method public getShakeTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->shakeTimeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSty()Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->sty:Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSyncSave()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->syncSave:I

    .line 2
    .line 3
    return v0
.end method

.method public getUseBrowser()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->useBrowser:I

    .line 2
    .line 3
    return v0
.end method

.method public getUseHttps()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->useHttps:I

    .line 2
    .line 3
    return v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVerbosity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->verbosity:I

    .line 2
    .line 3
    return v0
.end method

.method public getWebviewBlackSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->webviewBlackSchemes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebviewLimitedSchemes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean;->webviewLimitedSchemes:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAd(Lcom/meishu/sdk/core/utils/PackageBean$AdBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->ad:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 2
    .line 3
    return-void
.end method

.method public setApp(Lcom/meishu/sdk/core/utils/PackageBean$AppBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->app:Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    .line 2
    .line 3
    return-void
.end method

.method public setDclk(Lcom/meishu/sdk/core/utils/PackageBean$DClick;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->dclk:Lcom/meishu/sdk/core/utils/PackageBean$DClick;

    .line 2
    .line 3
    return-void
.end method

.method public setDefImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->defImages:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setDpflag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$DpFlagBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->dpflag:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setDpstay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->dpstay:I

    .line 2
    .line 3
    return-void
.end method

.method public setDue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->due:I

    .line 2
    .line 3
    return-void
.end method

.method public setFieldExport(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->fieldExport:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setHappy(Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->happy:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 2
    .line 3
    return-void
.end method

.method public setOlp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->olp:I

    .line 2
    .line 3
    return-void
.end method

.method public setShakeTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->shakeTimeout:J

    .line 2
    .line 3
    return-void
.end method

.method public setSty(Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->sty:Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;

    .line 2
    .line 3
    return-void
.end method

.method public setSyncSave(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->syncSave:I

    .line 2
    .line 3
    return-void
.end method

.method public setUseBrowser(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->useBrowser:I

    .line 2
    .line 3
    return-void
.end method

.method public setUseHttps(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->useHttps:I

    .line 2
    .line 3
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVerbosity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->verbosity:I

    .line 2
    .line 3
    return-void
.end method

.method public setWebviewBlackSchemes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->webviewBlackSchemes:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setWebviewLimitedSchemes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean;->webviewLimitedSchemes:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

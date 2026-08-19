.class public abstract Lcom/ubix/ssp/open/ParamsReview;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAppPackageName()Ljava/lang/String;
.end method

.method public abstract getCreativeId()Ljava/lang/String;
.end method

.method public abstract getDeeplinkUrl()Ljava/lang/String;
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getDownloadUrl()Ljava/lang/String;
.end method

.method public abstract getLandingPageUrl()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUBiXImageList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/open/nativee/UBiXImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUBiXVideo()Lcom/ubix/ssp/open/nativee/UBiXVideo;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrlList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isVideo()Z
.end method

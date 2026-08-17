.class public final Lcom/beizi/fusion/asnp/adn/ad/model/impl/req/ad/root/item/spec/ext/ReqSpecExtModel;
.super Lcom/beizi/fusion/asnp/adn/ad/model/impl/req/ASNPJsonRequestModel;
.source "SourceFile"


# instance fields
.field private localSchemeIDs:Ljava/util/List;
    .annotation runtime Lcom/beizi/fusion/ng;
        key = "schemeId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
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
.method public setLocalSchemeIDs(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/beizi/fusion/asnp/adn/ad/model/impl/req/ad/root/item/spec/ext/ReqSpecExtModel;->localSchemeIDs:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

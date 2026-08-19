.class final Lcom/kwad/sdk/o$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/collector/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/o;->e(Lcom/kwad/sdk/core/response/model/SdkConfigData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aGI:Lcom/kwad/sdk/o;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/o$8;->aGI:Lcom/kwad/sdk/o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lorg/json/JSONArray;)V
    .locals 1
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/p/a;->c(Lorg/json/JSONArray;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

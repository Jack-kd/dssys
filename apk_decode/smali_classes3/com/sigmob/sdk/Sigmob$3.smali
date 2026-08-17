.class Lcom/sigmob/sdk/Sigmob$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/Sigmob;->a(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/sigmob/sdk/Sigmob;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/Sigmob;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/Sigmob$3;->b:Lcom/sigmob/sdk/Sigmob;

    iput-object p2, p0, Lcom/sigmob/sdk/Sigmob$3;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/volley/VolleyError;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/Sigmob$3;->a:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

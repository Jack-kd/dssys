.class public final synthetic Lcom/sigmob/sdk/base/common/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/K0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/K0;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/K0;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/K0;->b:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/base/common/q;->o(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)V

    return-void
.end method

.class public final synthetic Lcom/sigmob/sdk/base/views/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/views/c;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/c;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/L;->b:Lcom/sigmob/sdk/base/views/c;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/L;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sigmob/sdk/base/views/L;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/L;->b:Lcom/sigmob/sdk/base/views/c;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/L;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/L;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/views/c;->a(Lcom/sigmob/sdk/base/views/c;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

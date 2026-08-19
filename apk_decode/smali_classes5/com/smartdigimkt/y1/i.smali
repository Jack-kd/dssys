.class public final Lcom/smartdigimkt/y1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/d5/c;


# instance fields
.field public final synthetic a:Lcom/smartdigimkt/y1/j;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/y1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/y1/i;->a:Lcom/smartdigimkt/y1/j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartdigimkt/y1/i;->a:Lcom/smartdigimkt/y1/j;

    iget-object v0, v0, Lcom/smartdigimkt/y1/j;->b:Lcom/smartdigimkt/sdk/basead/ui/animplayerview/BaseMainAnimPlayerView;

    iget-object v0, v0, Lcom/smartdigimkt/sdk/basead/ui/animplayerview/BaseAnimPlayerView;->x:Lcom/smartdigimkt/sdk/core/common/res/image/RecycleImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

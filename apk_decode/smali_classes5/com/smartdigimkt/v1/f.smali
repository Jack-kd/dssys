.class public final Lcom/smartdigimkt/v1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/d5/c;


# instance fields
.field public final synthetic a:Lcom/smartdigimkt/v1/g;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/v1/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/v1/f;->a:Lcom/smartdigimkt/v1/g;

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
    iget-object v0, p0, Lcom/smartdigimkt/v1/f;->a:Lcom/smartdigimkt/v1/g;

    iget-object v0, v0, Lcom/smartdigimkt/v1/g;->c:Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

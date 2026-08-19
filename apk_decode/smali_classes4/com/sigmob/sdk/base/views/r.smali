.class public Lcom/sigmob/sdk/base/views/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/r$a;,
        Lcom/sigmob/sdk/base/views/r$b;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x82

    const/16 v1, 0xef

    const/16 v2, 0x4d

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sigmob/sdk/base/views/r;->a:I

    const/16 v0, 0x8d

    const/16 v1, 0x8e

    const/16 v2, 0x8c

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sigmob/sdk/base/views/r;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

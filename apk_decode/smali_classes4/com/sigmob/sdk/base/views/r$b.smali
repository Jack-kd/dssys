.class public Lcom/sigmob/sdk/base/views/r$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x4

.field public static final c:I = -0x1

.field public static final d:I = 0x80

.field public static final e:Landroid/graphics/Paint$Style;

.field public static final f:I

.field public static final g:I = 0xff

.field public static final h:Landroid/graphics/Paint$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    sput-object v0, Lcom/sigmob/sdk/base/views/r$b;->e:Landroid/graphics/Paint$Style;

    sget v1, Lcom/sigmob/sdk/base/views/r;->a:I

    sput v1, Lcom/sigmob/sdk/base/views/r$b;->f:I

    sput-object v0, Lcom/sigmob/sdk/base/views/r$b;->h:Landroid/graphics/Paint$Style;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

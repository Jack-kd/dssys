.class Lcom/sigmob/sdk/base/utils/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:[Ljava/lang/reflect/Field;

.field final b:[Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Field;[Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/utils/i$a;->a:[Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/sigmob/sdk/base/utils/i$a;->b:[Ljava/lang/reflect/Method;

    return-void
.end method

.class final enum Lcom/kuaishou/weapon/p0/co$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kuaishou/weapon/p0/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kuaishou/weapon/p0/co$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/kuaishou/weapon/p0/co$a;

.field public static final enum b:Lcom/kuaishou/weapon/p0/co$a;

.field private static final synthetic d:[Lcom/kuaishou/weapon/p0/co$a;


# instance fields
.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/kuaishou/weapon/p0/co$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    const-string v3, "DWORD"

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/kuaishou/weapon/p0/co$a;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/kuaishou/weapon/p0/co$a;->a:Lcom/kuaishou/weapon/p0/co$a;

    .line 11
    .line 12
    new-instance v1, Lcom/kuaishou/weapon/p0/co$a;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    const-string v4, "QWORD"

    .line 18
    .line 19
    invoke-direct {v1, v4, v2, v3}, Lcom/kuaishou/weapon/p0/co$a;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/kuaishou/weapon/p0/co$a;->b:Lcom/kuaishou/weapon/p0/co$a;

    .line 23
    .line 24
    filled-new-array {v0, v1}, [Lcom/kuaishou/weapon/p0/co$a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/kuaishou/weapon/p0/co$a;->d:[Lcom/kuaishou/weapon/p0/co$a;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/kuaishou/weapon/p0/co$a;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kuaishou/weapon/p0/co$a;
    .locals 1

    .line 1
    const-class v0, Lcom/kuaishou/weapon/p0/co$a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/kuaishou/weapon/p0/co$a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/kuaishou/weapon/p0/co$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/kuaishou/weapon/p0/co$a;->d:[Lcom/kuaishou/weapon/p0/co$a;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/kuaishou/weapon/p0/co$a;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/kuaishou/weapon/p0/co$a;

    .line 8
    .line 9
    return-object v0
.end method

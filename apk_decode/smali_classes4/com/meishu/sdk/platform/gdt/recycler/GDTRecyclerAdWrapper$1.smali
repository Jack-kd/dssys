.class Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)Lcom/meishu/sdk/core/loader/c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getFetchCount()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-gtz v0, :cond_0

    .line 47
    .line 48
    move v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)Lcom/meishu/sdk/core/loader/c;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getFetchCount()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const v3, 0x30d40

    .line 75
    .line 76
    .line 77
    if-ne v2, v3, :cond_3

    .line 78
    .line 79
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ne v2, v1, :cond_1

    .line 90
    .line 91
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-static {v1, v2}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->access$202(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;Z)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto :goto_2

    .line 100
    :cond_1
    const/4 v3, 0x2

    .line 101
    if-ne v2, v3, :cond_2

    .line 102
    .line 103
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 104
    .line 105
    invoke-static {v2, v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->access$202(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;Z)Z

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    new-instance v0, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 110
    .line 111
    const-string v1, "\u4fe1\u606f\u6d41\u6a21\u5f0f\u4e0d\u652f\u6301"

    .line 112
    .line 113
    const/4 v2, -0x1

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-direct {v0, v1, v2, v3}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->access$300(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_3
    const v3, 0x186a0

    .line 138
    .line 139
    .line 140
    if-ne v2, v3, :cond_4

    .line 141
    .line 142
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 143
    .line 144
    invoke-static {v2, v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->access$202(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;Z)Z

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 148
    .line 149
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_5

    .line 154
    .line 155
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 156
    .line 157
    invoke-static {v1, v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->access$400(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;I)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_5
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 162
    .line 163
    invoke-static {v1, v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->access$500(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    return-void
.end method

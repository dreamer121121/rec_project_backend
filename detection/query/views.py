from django.shortcuts import render
import pymysql
import uuid
from django.http import JsonResponse
from PIL import Image
import numpy as np
from django.core.files.storage import default_storage
from django.core.files.base import ContentFile
import os

# Create your views here.

def send_message(request):
    try:
        id = uuid.uuid1()
        name = request.GET.get('nm')
        email = request.GET.get('email')
        message = request.GET.get('message')
        conn = pymysql.Connect(host='localhost', db='rec_project', password='123456', user='root')
        cursor = conn.cursor()
        fileds = ('id', 'fullname', 'email', 'message')
        sql = 'insert into detection'
        sql += str(tuple(fileds))
        sql = sql.replace('\'', '')
        values = (str(id), name, email, message)
        sql_values = ' values' + str(tuple(values))
        sql += sql_values
        cursor.execute(sql)
        conn.commit()
        result = {}
        result['status'] = 'success'
        result['message'] = ['发送信息成功']
        return JsonResponse(result)
    except Exception as e:
        result = {}
        result['status'] = 'failed'
        result['message'] = ["发送信息失败"]
        return JsonResponse(result)


def postimg(request):
    result = {}
    try:
        img = request.FILES.get('img')
        if not img:
            return JsonResponse({'message': 'Please upload a image'})
        default_storage.save('/opt/rec_project/backend/detection/images/' + img.name, ContentFile(img.read()))
        detect(img.name)
        result_img = img.name.split('.')[0] + '-result.jpg'
        if result_img in os.listdir("/opt/rec_project/backend/detection/detected_img/"):
            result['status'] = 'success'
            result['message'] = [result_img]
            return JsonResponse(result)
        else:
            return JsonResponse({'message': 'Please wait for a moment'})
    except Exception as e:
        result['status'] = 'error'
        result['message'] = e
        return JsonResponse(result)


def detect(request):
    '''
    调用模型进行检测,将结果保存成图片
    模型将检测结果图片存储到detected_img中
    :param request:
    :return:
    '''
    pass

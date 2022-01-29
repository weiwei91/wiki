package com.wei.wiki.controller;

import com.wei.wiki.dto.req.EbookQueryReq;
import com.wei.wiki.dto.req.EbookSaveReq;
import com.wei.wiki.dto.resp.CommonResp;
import com.wei.wiki.dto.resp.EbookQueryResp;
import com.wei.wiki.dto.resp.PageResp;
import com.wei.wiki.service.EbookService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;

/**
 * @Description:
 * @Auther: weiwei
 * @Date: 2022/01/28/20:28
 */
@RestController
@RequestMapping("/ebook")
public class EbookController {
    @Resource
    private EbookService ebookService;

    @GetMapping("/list")
    public CommonResp list(@Valid EbookQueryReq req) {
        CommonResp<PageResp<EbookQueryResp>> resp = new CommonResp<>();
        PageResp<EbookQueryResp> list = ebookService.list(req);
        resp.setContent(list);
        return resp;
    }

    @PostMapping("/save")
    public CommonResp save(@Valid @RequestBody EbookSaveReq req) {
        CommonResp resp = new CommonResp<>();
        ebookService.save(req);
        return resp;
    }

    @DeleteMapping("/delete/{id}")
    public CommonResp delete(@PathVariable Long id) {
        CommonResp resp = new CommonResp<>();
        ebookService.delete(id);
        return resp;
    }

}
